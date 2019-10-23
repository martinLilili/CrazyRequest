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
    
    let deviceid = UUID().uuidString
    
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
        
//        getDefaultAddress()
//        return
        
        if let code = codeField.text {
            var content : [String : Any] = [:]
            content["phone"] = phoneField.text!
            content["countryCode"] = "86"
            content["smsCode"] = code
            content["did"] = deviceid
            
            Alamofire.request("https://user.yunjiglobal.com/yunjiuserapp/userapp/verifyByPhone.json", method: .post,parameters: content).responseJSON(completionHandler: { (response) in
                
            
                self.remindlabel.text = "response = \(response)"
                var buyerName = ""
                var buyerProvince = ""
                var buyerCity = ""
                var buyerArea = ""
                var buyerStreet = ""
                var buyerAddress = ""
                var buyerNick = ""
                var buyerPhone = ""
                var ticket = ""
                var consumerId = ""
                var shopId = ""
                
                if let JSON = response.result.value as? [String : Any] {
                    CWLog("response = \(JSON)")
                    if let data = JSON["data"] as? [String : Any] {
                        if let consumer = data["consumer"] as? [String : Any] {
                            if let cid = consumer["consumerId"] as? Int {
                                print("cid = \(cid)")
                                consumerId = "\(cid)"
                            }
                            if let nickName = consumer["nickName"] as? String {
                                print("nickName = \(nickName)")
                                if nickName != "<null>" {
                                    buyerNick = nickName
                                }
                            }
                            if let simplePhone = consumer["simplePhone"] as? String {
                                buyerPhone = simplePhone
                            }
                            if let tt = consumer["ticket"] as? String {
                                ticket =  "ticket|" + tt
                            }
                            if let inviteCodeShopId = consumer["inviteCodeShopId"] as? Int {
                                shopId = "\(inviteCodeShopId)"
                            }
                        }
                        print("consumerId = \(consumerId)")
                        print("buyerNick = \(buyerNick)")
                    
                        print("ticket = \(ticket)")
                        print("shopId = \(shopId)")
                        
                        
                        
                    }
                }
                
                var parameters : [String : Any] = [:]
                parameters["shopId"] = shopId
                parameters["appCont"] = "2"
                parameters["ticket"] = ticket
                CWLog("parameters = \(parameters)")
                Alamofire.request("https://m.yunjiglobal.com/yunjibuyer/getDefaulAddress.json", method: .get, parameters: parameters).responseJSON(completionHandler: { (response) in
                    if let JSONarr = response.result.value as? [String : Any] {
                        CWLog("getDefaulAddress = \(JSONarr)")
                        self.remindlabel.text = "getDefaulAddress = \(JSONarr)"
                        if let data = JSONarr["data"] as? [String : Any] {
                            
                            if let errorCode = data["errorCode"] as? Int {
                                if errorCode == 0 {
                                    if let address = data["address"] as? String {
                                        buyerAddress = address
                                    }
                                    if let area = data["area"] as? String {
                                        buyerArea = area
                                    }
                                    if let city = data["city"] as? String {
                                        buyerCity = city
                                    }
                                    if let consigneeName = data["consigneeName"] as? String {
                                        buyerName = consigneeName
                                    }
                                    if let province = data["province"] as? String {
                                        buyerProvince = province
                                    }
                                    if let street = data["street"] as? String {
                                        buyerStreet = street
                                    }
                                    if let phone = data["phone"] as? String {
                                        buyerPhone = phone
                                    }
                                    
                                    
                                    print("buyerAddress = \(buyerAddress)")
                                    print("buyerArea = \(buyerArea)")
                                    print("buyerCity = \(buyerCity)")
                                    print("buyerName = \(buyerName)")
                                    print("buyerProvince = \(buyerProvince)")
                                    print("buyerStreet = \(buyerStreet)")
                                    print("buyerPhone = \(buyerPhone)")
                                    
                                    FMDBManager.share.updateUser(consumerId: consumerId, shopId: shopId, ticket: ticket, buyerPhone: buyerPhone, buyerName: buyerName, buyerProvince: buyerProvince, buyerCity: buyerCity, buyerArea: buyerArea, buyerStreet: buyerStreet, buyerAddress: buyerAddress, buyerNick: buyerNick, completionHandler:  {
                                        self.remindlabel.text = "user 保存成功"
//                                        SVProgressHUD.showSuccess(withStatus: "用户保存成功")
                                        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "useradded"), object: nil)
                                    })
                                    
                                }
                            } else {
                                self.remindlabel.text = "getDefaulAddress = \(JSONarr)"
                            }
                        } else {
                            self.remindlabel.text = "getDefaulAddress = \(JSONarr)"
                        }
                    }
                })
                
            })
        } else {
            remindlabel.text = "手机号为空"
        }
        
    }
    
    func getDefaultAddress() {
        var parameters : [String : Any] = [:]
        parameters["shopId"] = "187043204"
        parameters["appCont"] = "2"
        parameters["ticket"] = "ticket|consumer_ticket_144701385_9359155734db3ef63955bc847add51a6"
        CWLog("parameters = \(parameters)")
        Alamofire.request("https://m.yunjiglobal.com/yunjibuyer/getDefaulAddress.json", method: .get, parameters: parameters).responseJSON(completionHandler: { (response) in
            if let JSONarr = response.result.value as? [String : Any] {
                CWLog("getDefaulAddress = \(JSONarr)")
                if let data = JSONarr["data"] as? [String : Any] {
                    CWLog("data = \(data)")
                }
            }
            
        })
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
