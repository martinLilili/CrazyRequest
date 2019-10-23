//
//  ViewController.swift
//  CrazyRequest
//
//  Created by cruzr on 2019/10/18.
//  Copyright © 2019 martin. All rights reserved.
//

import UIKit
import Alamofire


//MARK: - 封装asyncAfter

typealias Task = (_ cancel : Bool) -> Void

func delay(time:TimeInterval, task:@escaping ()->()) ->  Task? {
    func dispatch_later(block:@escaping ()->()) {
//        let additionalTime: DispatchTimeInterval = .seconds(Int(time))
        DispatchQueue.main.asyncAfter(deadline: .now() + time) {
                block()
        }
    }
    var closure: (()->())? = task
    var result: Task?
    let delayedClosure: Task = {
        cancel in
        if let internalClosure = closure {
            if (cancel == false) {
                DispatchQueue.main.async(execute: internalClosure)
            }
        }
        closure = nil
        result = nil
    }
    result = delayedClosure
    dispatch_later {
        if let delayedClosure = result {
            delayedClosure(false)
        }
    }
    return result;
}

func cancelDispathTime(task:Task?) {
    task?(true)
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var userArr = [User]()
    
    @IBOutlet weak var tableview: UITableView! {
        didSet {
            tableview.delegate = self
            tableview.dataSource = self
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.userAdded(_:)), name: NSNotification.Name(rawValue: "useradded"), object: nil)
        
        updateUser()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
        
    }
    @objc func userAdded(_ noti : Notification) {
        updateUser()
    }
    
    func updateUser() {
        FMDBManager.share.loadAllUsers { (users) in
            for user in users {
                user.toString()
            }
            
            self.userArr = users
            self.tableview.reloadData()
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        userArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "usertableviewcell", for: indexPath)

        // Configure the cell...
        let user = userArr[indexPath.row]
        cell.textLabel?.text = "\(user.buyerName)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.backgroundColor = UIColor.green
//        SVProgressHUD.showSuccess(withStatus: "用户保存成功")
        let user = userArr[indexPath.row]
        let isContains = DataManager.share.selectUsers.contains{ (u) -> Bool in
            return u.consumerId == user.consumerId
        }
        if !isContains {
            DataManager.share.selectUsers.append(user)
        }
        
        print("selectUsers count = \(DataManager.share.selectUsers.count)")
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.backgroundColor = UIColor.white
        let user = userArr[indexPath.row]
        let index = DataManager.share.selectUsers.firstIndex { (u) -> Bool in
            return u.consumerId == user.consumerId
        }
        if index != nil {
            DataManager.share.selectUsers.remove(at: index!)
        }
        print("selectUsers count = \(DataManager.share.selectUsers.count)")
        
    }
    
}

