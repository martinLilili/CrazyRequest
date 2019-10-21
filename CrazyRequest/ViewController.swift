//
//  ViewController.swift
//  CrazyRequest
//
//  Created by cruzr on 2019/10/18.
//  Copyright © 2019 martin. All rights reserved.
//

import UIKit
import Alamofire


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var remindtext: UILabel!
    
    @IBAction func xs64yin(_ sender: UIButton) {
        print("xs64yin")
        normalRequest(itemid: "34094", id: "YX574000002")
//        var content : [String : Any] = [:]
//        content["buyerName"] = "李岳"
//        content["buyerProvince"] = "广东省"
//        content["buyerCity"] = "深圳市"
//        content["buyerArea"] = "南山区"
//        content["buyerAddress"] = "麒麟花园A区12栋B座1207"
//        content["buyerNick"] = "李岳"
//        content["buyerPhone"] = "18618415578"
//        content["discoverId"] = "0"
//        content["consumerId"] = "144701385"
//        content["isBalance"] = "0"
//        content["seqId"] = "0"
//        content["appCont"] = "2"
//        content["shopId"] = "968"
//        content["deviceId"] = "25750A1F-B3F5-40A8-9969-A89247E91D25"
//        content["authId"] = "-1"
//        content["isCompress"] = "0"
//        content["newerZoneUserType"] = "0"
//        content["isNoPassTrader"] = "0"
//        content["newBornZone"] = false
//
//        content["buyerId"] = ""
//        content["buyerAddressFlag"] = ""
//        content["identityCardNo"] = ""
//        content["buyerComment"] = ""
//        content["unionId"] = ""
//
//
//        var item : [String : Any] = [:]
//        item["itemId"] = "34094"
//        item["barcode"] = "YX574000002"
//        item["buyCount"] = "1"
//        item["fullminusId"] = 0
//        item["buyAttachId"] = 0
//        item["accessories"] = 0
//        item["comboId"] = 0
//        item["combocarId"] = ""
//        item["source"] = ""
//        item["sourceType"] = ""
//        content["itemLists"] = "[\(dicValueString(item))]"
//
//
//        var cookie : [String : String] = [:]
//        let cookiestr = "ticket|consumer_ticket_142805311_699c476650d07ac0e9898fde00c57c4e"
//        cookie["Cookie"] = cookiestr
//        CWLog("content = \(content)")
//        CWLog("Cookie = \(cookie)")
//
//
//        var originalRequest: URLRequest?
//
//        do {
//            originalRequest = try URLRequest(url: "https://buy.yunjiglobal.com/yunjiorderbuy/makeorderget.json", method: .get, headers: cookie)
//            let encodedURLRequest = try URLEncoding.default.encode(originalRequest!, with: content)
//            print(encodedURLRequest)
//        } catch {
//            print("error")
//        }
//
//        Alamofire.request("https://buy.yunjiglobal.com/yunjiorderbuy/makeorderget.json",parameters: content,headers:cookie).responseJSON(completionHandler: { (response) in
//            CWLog("response = \(response)")
//
//            self.remindtext.text = "response = \(response)"
//
//        })
        
//        let URL = NSURL(string: "https://buy.yunjiglobal.com/yunjiorderbuy/makeorderget.json")!
//        var request = URLRequest(url: URL as URL)
//        request.httpMethod = "GET"
//
//        let cookie = "ticket|consumer_ticket_144701385_c6942fa75f6ac80b246f2748d5449249"
//
//        request.setValue(cookie, forHTTPHeaderField: "Cookie")
//
//        Alamofire.request(request).responseJSON { (response) in
//            print("response = \(response)")
//        }
        
    }
    
    func dicValueString(_ dic:[String: Any]) ->String{
        let data = try? JSONSerialization.data(withJSONObject: dic,options: [])
        if let str = String(data: data!,encoding:String.Encoding.utf8) {
            return str
        }
        return ""
        
    }
    @IBAction func xs256yin(_ sender: Any) {
        
        print("xs256yin")
        normalRequest(itemid: "34094", id: "YX574000003")
//        var content : [String : Any] = [:]
//        content["buyerName"] = "李岳"
//        content["buyerProvince"] = "广东省"
//        content["buyerCity"] = "深圳市"
//        content["buyerArea"] = "南山区"
//        content["buyerAddress"] = "麒麟花园A区12栋B座1207"
//        content["buyerNick"] = "李岳"
//        content["buyerPhone"] = "18618415578"
//        content["discoverId"] = "0"
//        content["consumerId"] = "144701385"
//        content["isBalance"] = "0"
//        content["seqId"] = "0"
//        content["appCont"] = "2"
//        content["shopId"] = "968"
//        content["deviceId"] = "25750A1F-B3F5-40A8-9969-A89247E91D25"
//        content["authId"] = "-1"
//        content["isCompress"] = "0"
//        content["newerZoneUserType"] = "0"
//        content["isNoPassTrader"] = "0"
//        content["newBornZone"] = false
//
//        content["buyerId"] = ""
//        content["buyerAddressFlag"] = ""
//        content["identityCardNo"] = ""
//        content["buyerComment"] = ""
//        content["unionId"] = ""
//
//
//        var item : [String : Any] = [:]
//        item["itemId"] = "34094"
//        item["barcode"] = "YX574000003"
//        item["buyCount"] = "1"
//        item["fullminusId"] = 0
//        item["buyAttachId"] = 0
//        item["accessories"] = 0
//        item["comboId"] = 0
//        item["combocarId"] = ""
//        item["source"] = ""
//        item["sourceType"] = ""
//        content["itemLists"] = "[\(dicValueString(item))]"
//
//
//        var cookie : [String : String] = [:]
//        let cookiestr = "ticket|consumer_ticket_144701385_c6942fa75f6ac80b246f2748d5449249"
//        cookie["Cookie"] = cookiestr
//        CWLog("content = \(content)")
//        CWLog("Cookie = \(cookie)")
//
//
//        var originalRequest: URLRequest?
//
//        do {
//            originalRequest = try URLRequest(url: "https://buy.yunjiglobal.com/yunjiorderbuy/makeorderget.json", method: .get, headers: cookie)
//            let encodedURLRequest = try URLEncoding.default.encode(originalRequest!, with: content)
//            print(encodedURLRequest)
//        } catch {
//            print("error")
//        }
//
//        Alamofire.request("https://buy.yunjiglobal.com/yunjiorderbuy/makeorderget.json",parameters: content,headers:cookie).responseJSON(completionHandler: { (response) in
//            CWLog("response = \(response)")
//
//            self.remindtext.text = "response = \(response)"
//
//        })
    }
    
    func normalRequest(itemid : String, id : String) {
        print("normalRequest id = \(id)")
        var content : [String : Any] = [:]
        content["buyerName"] = "莫子坤"
        content["buyerProvince"] = "上海市"
        content["buyerCity"] = "上海市"
        content["buyerArea"] = "宝山区"
        content["buyerStreet"] = "淞南镇"
        content["buyerAddress"] = "淞发路901弄祥腾一村1008号三国演义赛车场"
        content["buyerNick"] = "莫子坤"
        content["buyerPhone"] = "13925252448"
        content["discoverId"] = "0"
        content["consumerId"] = "142805311"
        content["isBalance"] = "0"
        content["seqId"] = "0"
        content["appCont"] = "2"
        content["shopId"] = "187043204"
        content["deviceId"] = "25750A1F-B3F5-40A8-9969-A89247E91D25"
        content["authId"] = "-1"
        content["isCompress"] = "0"
        content["newerZoneUserType"] = "0"
        content["isNoPassTrader"] = "0"
        content["newBornZone"] = false
        
        content["buyerId"] = "okKa-s3ypAI7cqI6DTVmaB7tzUCs"
        content["buyerAddressFlag"] = "上海"
        content["identityCardNo"] = "441202198411181516"
        content["buyerComment"] = ""
        content["unionId"] = "oZYqus8o_F7OzruZvo_kE_oZbiLI"
        
        
        var item : [String : Any] = [:]
        item["itemId"] = itemid
        item["barcode"] = id
        item["buyCount"] = "1"
        item["fullminusId"] = 0
        item["buyAttachId"] = 0
        item["accessories"] = 0
        item["comboId"] = 0
        item["combocarId"] = ""
        item["source"] = ""
        item["sourceType"] = ""
        content["itemLists"] = "[\(dicValueString(item))]"
        
        
        var cookie : [String : String] = [:]
        let cookiestr = "ticket|consumer_ticket_142805311_699c476650d07ac0e9898fde00c57c4e"
        cookie["Cookie"] = cookiestr
        CWLog("content = \(content)")
        CWLog("Cookie = \(cookie)")
        
        
        var originalRequest: URLRequest?

        do {
            originalRequest = try URLRequest(url: "https://buy.yunjiglobal.com/yunjiorderbuy/makeorderget.json", method: .get, headers: cookie)
            let encodedURLRequest = try URLEncoding.default.encode(originalRequest!, with: content)
            print(encodedURLRequest)
        } catch {
            print("error")
        }
        
        Alamofire.request("https://buy.yunjiglobal.com/yunjiorderbuy/makeorderget.json",parameters: content,headers:cookie).responseJSON(completionHandler: { (response) in
            CWLog("response = \(response)")

            self.remindtext.text = "response = \(response)"

        })
    }
    
    @IBAction func xs256jin(_ sender: Any) {
        print("xs256jin")
        normalRequest(itemid: "34094", id: "YX574000005")
    }
    
    @IBAction func xs64jin(_ sender: Any) {
        print("xs64jin")
        normalRequest(itemid: "34094", id: "YX574000004")
    }
    
    @IBAction func xs64hui(_ sender: Any) {
        print("xs64hui")
        
        normalRequest(itemid: "34094", id: "YX574000000")
    }
    
    @IBAction func i1164hei(_ sender: Any) {
        print("i1164hei")
        normalRequest(itemid: "278006", id: "YX571001325")
    }
    
    @IBAction func i1164hong(_ sender: Any) {
        print("i1164hong")
        normalRequest(itemid: "278006", id: "YX571001326")
    }
    
    @IBAction func i1164lv(_ sender: Any) {
        print("i1164lv")
        normalRequest(itemid: "278006", id: "YX571001327")
    }
    @IBAction func i1164bai(_ sender: Any) {
        print("i1164bai")
        normalRequest(itemid: "278006", id: "YX571001324")
    }
    @IBAction func i1164huang(_ sender: Any) {
        print("i1164huang")
        normalRequest(itemid: "278006", id: "YX571001328")
    }
    
    @IBAction func i11128hong(_ sender: Any) {
        print("i11128hong")
        normalRequest(itemid: "278006", id: "YX571001332")
    }
    
    @IBAction func i11128bai(_ sender: Any) {
        print("i11128hong")
        normalRequest(itemid: "278006", id: "YX571001330")
    }
    
    @IBAction func i11128huang(_ sender: Any) {
        print("i11128huang")
        normalRequest(itemid: "278006", id: "YX571001334")
    }
    
    @IBAction func i11128lv(_ sender: Any) {
        print("i11128lv")
        normalRequest(itemid: "278006", id: "YX571001333")
    }
    
    @IBAction func i11128黑(_ sender: Any) {
        print("i11128黑")
        normalRequest(itemid: "278006", id: "YX571001331")
    }
    
    @IBAction func i11256红(_ sender: Any) {
        print("i11256红")
        normalRequest(itemid: "278006", id: "YX571001338")
    }
    
    @IBAction func i11256紫(_ sender: Any) {
        print("i11256紫")
        normalRequest(itemid: "278006", id: "YX571001341")
    }
    
    @IBAction func i11256黄(_ sender: Any) {
        print("i11256黄")
        normalRequest(itemid: "278006", id: "YX571001340")
    }
    
}

