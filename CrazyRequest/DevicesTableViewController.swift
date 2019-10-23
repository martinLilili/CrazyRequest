//
//  DevicesTableViewController.swift
//  CrazyRequest
//
//  Created by cruzr on 2019/10/22.
//  Copyright © 2019 martin. All rights reserved.
//

import UIKit
import Alamofire

class DevicesTableViewController: UITableViewController {
    
    var sectionArr = [String]()
    
    var deviceDic = [String : [DeviceModel]]()
    var taskDic = [String : Task]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        sectionArr.append("iphone xs")
        var xs = [DeviceModel]()
        let xs64yin = DeviceModel(name: "iphone xs", store: "64", itemid: "34094", deviceid: "YX574000002", color: "银")
        xs.append(xs64yin)
        
        let xs64jin = DeviceModel(name: "iphone xs", store: "64", itemid: "34094", deviceid: "YX574000004", color: "金")
        xs.append(xs64jin)
        
        let xs64hui = DeviceModel(name: "iphone xs", store: "64", itemid: "34094", deviceid: "YX574000000", color: "灰")
        xs.append(xs64hui)
        
        let xs256jin = DeviceModel(name: "iphone xs", store: "256", itemid: "34094", deviceid: "YX574000005", color: "金")
        xs.append(xs256jin)
        
        let xs256yin = DeviceModel(name: "iphone xs", store: "256", itemid: "34094", deviceid: "YX574000003", color: "银")
        xs.append(xs256yin)
        
        deviceDic["iphone xs"] = xs
        
        
        sectionArr.append("iphone xs max")
        var xsm = [DeviceModel]()
        
        let xsm64yin = DeviceModel(name: "iphone xs max", store: "64", itemid: "34098", deviceid: "YX574000010", color: "银")
        xsm.append(xsm64yin)
        
        let xsm64jin = DeviceModel(name: "iphone xs max", store: "64", itemid: "34098", deviceid: "YX574000006", color: "金")
        xsm.append(xsm64jin)
        
        let xsm64hui = DeviceModel(name: "iphone xs max", store: "64", itemid: "34098", deviceid: "YX574000008", color: "灰")
        xsm.append(xsm64hui)
        
        let xsm256yin = DeviceModel(name: "iphone xs max", store: "256", itemid: "34098", deviceid: "YX574000011", color: "银")
        xsm.append(xsm256yin)
        
        let xsm256jin = DeviceModel(name: "iphone xs max", store: "256", itemid: "34098", deviceid: "YX574000007", color: "金")
        xsm.append(xsm256jin)
        
        let xsm256hui = DeviceModel(name: "iphone xs max", store: "256", itemid: "34098", deviceid: "YX574000009", color: "灰")
        xsm.append(xsm256hui)
        
        deviceDic["iphone xs max"] = xsm
        
        
        sectionArr.append("iphone 11")
        var i11 = [DeviceModel]()
        let i1164hei = DeviceModel(name: "iphone 11", store: "64", itemid: "278006", deviceid: "YX571001325", color: "黑")
        i11.append(i1164hei)
        
        let i1164hong = DeviceModel(name: "iphone 11", store: "64", itemid: "278006", deviceid: "YX571001326", color: "红")
        i11.append(i1164hong)
        
        let i1164lv = DeviceModel(name: "iphone 11", store: "64", itemid: "278006", deviceid: "YX571001327", color: "绿")
        i11.append(i1164lv)
        
        let i1164bai = DeviceModel(name: "iphone 11", store: "64", itemid: "278006", deviceid: "YX571001324", color: "白")
        i11.append(i1164bai)
        
        let i1164huang = DeviceModel(name: "iphone 11", store: "64", itemid: "278006", deviceid: "YX571001328", color: "黄")
        i11.append(i1164huang)
        
        let i11128hong = DeviceModel(name: "iphone 11", store: "128", itemid: "278006", deviceid: "YX571001332", color: "红")
        i11.append(i11128hong)
        
        let i11128bai = DeviceModel(name: "iphone 11", store: "128", itemid: "278006", deviceid: "YX571001330", color: "白")
        i11.append(i11128bai)
        
        let i11128huang = DeviceModel(name: "iphone 11", store: "128", itemid: "278006", deviceid: "YX571001334", color: "黄")
        i11.append(i11128huang)
        
        let i11128lv = DeviceModel(name: "iphone 11", store: "128", itemid: "278006", deviceid: "YX571001333", color: "绿")
        i11.append(i11128lv)
        
        let i11128hei = DeviceModel(name: "iphone 11", store: "128", itemid: "278006", deviceid: "YX571001331", color: "黑")
        i11.append(i11128hei)
        
        let i11128zi = DeviceModel(name: "iphone 11", store: "128", itemid: "278006", deviceid: "YX571001335", color: "紫")
        i11.append(i11128zi)
        
        let i11256hong = DeviceModel(name: "iphone 11", store: "256", itemid: "278006", deviceid: "YX571001338", color: "红")
        i11.append(i11256hong)
        
        let i11256bai = DeviceModel(name: "iphone 11", store: "256", itemid: "278006", deviceid: "YX571001336", color: "白")
        i11.append(i11256bai)
        
        let i11256huang = DeviceModel(name: "iphone 11", store: "256", itemid: "278006", deviceid: "YX571001340", color: "黄")
        i11.append(i11256huang)
        
        let i11256lv = DeviceModel(name: "iphone 11", store: "256", itemid: "278006", deviceid: "YX571001339", color: "绿")
        i11.append(i11256lv)
        
        let i11256hei = DeviceModel(name: "iphone 11", store: "256", itemid: "278006", deviceid: "YX571001337", color: "黑")
        i11.append(i11256hei)
        
        let i11256zi = DeviceModel(name: "iphone 11", store: "256", itemid: "278006", deviceid: "YX571001341", color: "紫")
        i11.append(i11256zi)
        
        
        deviceDic["iphone 11"] = i11
        
        
        sectionArr.append("iphone 11 pro")
        var i11p = [DeviceModel]()
        
        i11p.append(DeviceModel(name: "iphone 11 pro", store: "64", itemid: "278005", deviceid: "YX571001303", color: "绿"))
        i11p.append(DeviceModel(name: "iphone 11 pro", store: "64", itemid: "278005", deviceid: "YX571001302", color: "灰"))
        i11p.append(DeviceModel(name: "iphone 11 pro", store: "64", itemid: "278005", deviceid: "YX571001301", color: "银"))
        i11p.append(DeviceModel(name: "iphone 11 pro", store: "64", itemid: "278005", deviceid: "YX571001300", color: "金"))
        
        i11p.append(DeviceModel(name: "iphone 11 pro", store: "256", itemid: "278005", deviceid: "YX571001307", color: "绿"))
        i11p.append(DeviceModel(name: "iphone 11 pro", store: "256", itemid: "278005", deviceid: "YX571001306", color: "灰"))
        i11p.append(DeviceModel(name: "iphone 11 pro", store: "256", itemid: "278005", deviceid: "YX571001305", color: "银"))
        i11p.append(DeviceModel(name: "iphone 11 pro", store: "256", itemid: "278005", deviceid: "YX571001304", color: "金"))
        
        i11p.append(DeviceModel(name: "iphone 11 pro", store: "512", itemid: "278005", deviceid: "YX571001311", color: "绿"))
        i11p.append(DeviceModel(name: "iphone 11 pro", store: "512", itemid: "278005", deviceid: "YX571001310", color: "灰"))
        i11p.append(DeviceModel(name: "iphone 11 pro", store: "512", itemid: "278005", deviceid: "YX571001309", color: "银"))
        i11p.append(DeviceModel(name: "iphone 11 pro", store: "512", itemid: "278005", deviceid: "YX571001308", color: "金"))
        
        deviceDic["iphone 11 pro"] = i11p
        
        sectionArr.append("iphone 11 pro max")
        var i11pm = [DeviceModel]()
        
        i11pm.append(DeviceModel(name: "iphone 11 pro max", store: "64", itemid: "277985", deviceid: "YX571001315", color: "绿"))
        i11pm.append(DeviceModel(name: "iphone 11 pro max", store: "64", itemid: "277985", deviceid: "YX571001314", color: "灰"))
        i11pm.append(DeviceModel(name: "iphone 11 pro max", store: "64", itemid: "277985", deviceid: "YX571001313", color: "银"))
        i11pm.append(DeviceModel(name: "iphone 11 pro max", store: "64", itemid: "277985", deviceid: "YX571001312", color: "金"))
        
        i11pm.append(DeviceModel(name: "iphone 11 pro max", store: "256", itemid: "277985", deviceid: "YX571001319", color: "绿"))
        i11pm.append(DeviceModel(name: "iphone 11 pro max", store: "256", itemid: "277985", deviceid: "YX571001318", color: "灰"))
        i11pm.append(DeviceModel(name: "iphone 11 pro max", store: "256", itemid: "277985", deviceid: "YX571001317", color: "银"))
        i11pm.append(DeviceModel(name: "iphone 11 pro max", store: "256", itemid: "277985", deviceid: "YX571001316", color: "金"))
        
        i11pm.append(DeviceModel(name: "iphone 11 pro max", store: "512", itemid: "277985", deviceid: "YX571001323", color: "绿"))
        i11pm.append(DeviceModel(name: "iphone 11 pro max", store: "512", itemid: "277985", deviceid: "YX571001322", color: "灰"))
        i11pm.append(DeviceModel(name: "iphone 11 pro max", store: "512", itemid: "277985", deviceid: "YX571001321", color: "银"))
        i11pm.append(DeviceModel(name: "iphone 11 pro max", store: "512", itemid: "277985", deviceid: "YX571001320", color: "金"))
        
        deviceDic["iphone 11 pro max"] = i11pm
        
        sectionArr.append("iphone xr")
        var ixr = [DeviceModel]()
        
        ixr.append(DeviceModel(name: "iphone xr", store: "64", itemid: "38837", deviceid: "YX575000004", color: "红"))
        ixr.append(DeviceModel(name: "iphone xr", store: "64", itemid: "38837", deviceid: "YX575000001", color: "黑"))
        ixr.append(DeviceModel(name: "iphone xr", store: "64", itemid: "38837", deviceid: "YX575000005", color: "珊瑚"))
        ixr.append(DeviceModel(name: "iphone xr", store: "64", itemid: "38837", deviceid: "YX575000003", color: "黄"))
        ixr.append(DeviceModel(name: "iphone xr", store: "64", itemid: "38837", deviceid: "YX575000000", color: "白"))
        ixr.append(DeviceModel(name: "iphone xr", store: "64", itemid: "38837", deviceid: "YX575000002", color: "蓝"))
        
        ixr.append(DeviceModel(name: "iphone xr", store: "128", itemid: "38837", deviceid: "YX575000010", color: "红"))
        ixr.append(DeviceModel(name: "iphone xr", store: "128", itemid: "38837", deviceid: "YX575000007", color: "黑"))
        ixr.append(DeviceModel(name: "iphone xr", store: "128", itemid: "38837", deviceid: "YX575000011", color: "珊瑚"))
        ixr.append(DeviceModel(name: "iphone xr", store: "128", itemid: "38837", deviceid: "YX575000009", color: "黄"))
        ixr.append(DeviceModel(name: "iphone xr", store: "128", itemid: "38837", deviceid: "YX575000006", color: "白"))
        
        ixr.append(DeviceModel(name: "iphone xr", store: "256", itemid: "38837", deviceid: "YX575000016", color: "红"))
        ixr.append(DeviceModel(name: "iphone xr", store: "256", itemid: "38837", deviceid: "YX575000013", color: "黑"))
        
        deviceDic["iphone xr"] = ixr
        
        tableView.reloadData()
        
        
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return sectionArr.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return deviceDic[sectionArr[section]]?.count ?? 0
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "devicecell", for: indexPath)

        // Configure the cell...
        
        if let devices = deviceDic[sectionArr[indexPath.section]]{
            let device = devices[indexPath.row]
            cell.textLabel?.text = "\(device.store)  \(device.color)"
        }
        

        
        

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel(frame: CGRect(x:0, y: 0, width: 300, height: 40))
        
        label.text = "  \(sectionArr[section])"
        label.backgroundColor = UIColor.white
        return label
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let devices = deviceDic[sectionArr[indexPath.section]]{
            let device = devices[indexPath.row]
    
            
            normalRequest(itemid: device.itemid, id: device.deviceid)
            
            
        }
    }
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        if let devices = deviceDic[sectionArr[indexPath.section]]{
                let device = devices[indexPath.row]
        
                
            cancelDispathTime(task: taskDic[device.deviceid])
                
                
            }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        for task in taskDic.values {
            cancelDispathTime(task: task)
        }
    }
    
    func normalRequest(itemid : String, id : String) {
        print("normalRequest id = \(id)")
        
//        mozikunRequest(itemid: itemid, id: id)
        for user in DataManager.share.selectUsers {
            userRequest(itemid: itemid, id: id, user: user)
        }
        let task = delay(time: 1) {
            self.normalRequest(itemid: itemid, id: id)
        }
        taskDic[id] = task
        
    }
    
    func mozikunRequest(itemid : String, id : String) {
        print("mozikunRequest id = \(id)")
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
        content["deviceId"] = UUID().uuidString
        content["authId"] = "-1"
        content["isCompress"] = "0"
        content["newerZoneUserType"] = "0"
        content["isNoPassTrader"] = "0"
        content["newBornZone"] = false
        
//        content["buyerId"] = "okKa-s3ypAI7cqI6DTVmaB7tzUCs"
//        content["buyerAddressFlag"] = "上海"
//        content["identityCardNo"] = "441202198411181516"
//        content["buyerComment"] = ""
//        content["unionId"] = "oZYqus8o_F7OzruZvo_kE_oZbiLI"
        
        content["buyerId"] = ""
        content["buyerAddressFlag"] = ""
        content["identityCardNo"] = ""
        content["buyerComment"] = ""
        content["unionId"] = ""
        
        
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

//            self.remindtext.text = "response = \(response)"

        })
    }
    
    func userRequest(itemid : String, id : String, user : User) {
            print("mozikunRequest id = \(id)")
            var content : [String : Any] = [:]
        content["buyerName"] = user.buyerName
        content["buyerProvince"] = user.buyerProvince
        content["buyerCity"] = user.buyerCity
        content["buyerArea"] = user.buyerArea
        content["buyerStreet"] = user.buyerStreet
        content["buyerAddress"] = user.buyerAddress
        content["buyerNick"] = user.buyerNick
        content["buyerPhone"] = user.buyerPhone
            content["discoverId"] = "0"
        content["consumerId"] = user.consumerId
            content["isBalance"] = "0"
            content["seqId"] = "0"
            content["appCont"] = "2"
        content["shopId"] = user.shopId
            content["deviceId"] = UUID().uuidString
            content["authId"] = "-1"
            content["isCompress"] = "0"
            content["newerZoneUserType"] = "0"
            content["isNoPassTrader"] = "0"
            content["newBornZone"] = false
            
    //        content["buyerId"] = "okKa-s3ypAI7cqI6DTVmaB7tzUCs"
    //        content["buyerAddressFlag"] = "上海"
    //        content["identityCardNo"] = "441202198411181516"
    //        content["buyerComment"] = ""
    //        content["unionId"] = "oZYqus8o_F7OzruZvo_kE_oZbiLI"
            
            content["buyerId"] = ""
            content["buyerAddressFlag"] = ""
            content["identityCardNo"] = ""
            content["buyerComment"] = ""
            content["unionId"] = ""
            
            
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
        let cookiestr = user.ticket
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

    //            self.remindtext.text = "response = \(response)"

            })
        }
    
    func dicValueString(_ dic:[String: Any]) ->String{
           let data = try? JSONSerialization.data(withJSONObject: dic,options: [])
           if let str = String(data: data!,encoding:String.Encoding.utf8) {
               return str
           }
           return ""
           
       }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
