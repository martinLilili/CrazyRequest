//
//  LoginViewController.swift
//  CrazyRequest
//
//  Created by cruzr on 2019/10/21.
//  Copyright © 2019 martin. All rights reserved.
//

import UIKit
import Alamofire


class LoginViewController: UIViewController {

    @IBOutlet weak var phoneField: UITextField!
    
    @IBOutlet weak var codeField: UITextField!
    
    @IBOutlet weak var remindlabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()


        
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func getCode(_ sender: Any) {
        if let  phone = phoneField.text {
            
            var content : [String : Any] = [:]
            content["phone"] = phone
            content["countryCode"] = "86"
            
            Alamofire.request("https://user.yunjiglobal.com/yunjiuserapp/userapp/generateSmsCode.json",parameters: content).responseJSON(completionHandler: { (response) in
                CWLog("response = \(response)")
            
                self.remindlabel.text = "response = \(response)"

            })
            
        } else{
            remindlabel.text = "手机号为空"
        }
        
    }
    
    @IBAction func loginBntClicked(_ sender: Any) {
        
        if let code = codeField.text {
            var content : [String : Any] = [:]
            content["phone"] = phoneField.text!
            content["countryCode"] = "86"
            content["smsCode"] = code
            content["did"] = "25750A1F-B3F5-40A8-9969-A89247E91D25"
            
            Alamofire.request("https://user.yunjiglobal.com/yunjiuserapp/userapp/verifyByPhone.json", method: .post,parameters: content).responseJSON(completionHandler: { (response) in
                CWLog("response = \(response)")
            
                self.remindlabel.text = "response = \(response)"

            })
        } else {
            remindlabel.text = "手机号为空"
        }
        
    }
    
    func getDefaultAddress() {
//        var content : [String : Any] = [:]
//        content["phone"] = phone
//        content["countryCode"] = "86"
//        
//        Alamofire.request("https://user.yunjiglobal.com/yunjiuserapp/userapp/generateSmsCode.json",parameters: content).responseJSON(completionHandler: { (response) in
//            CWLog("response = \(response)")
//        
//            self.remindlabel.text = "response = \(response)"
//
//        })
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
