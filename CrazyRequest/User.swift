//
//  User.swift
//  CrazyRequest
//
//  Created by cruzr on 2019/10/23.
//  Copyright © 2019 martin. All rights reserved.
//

import UIKit

class User: Codable {
    
//    从地址中获取
    var buyerName = ""
    var buyerProvince = ""
    var buyerCity = ""
    var buyerArea = ""
    var buyerStreet = ""
    var buyerAddress = ""
    var buyerNick = ""
    
    
//    从登录中获取
    var buyerPhone = ""
    var ticket = ""
    var consumerId = ""
    var shopId = ""
    
    init() {
    
    }
    
    private enum CodingKeys: String, CodingKey {
        case buyerName = "buyerName"
        case buyerProvince = "buyerProvince"
        case buyerCity = "buyerCity"
        case buyerArea = "buyerArea"
        case buyerStreet = "buyerStreet"
        case buyerAddress = "buyerAddress"
        case buyerNick = "buyerNick"
        case buyerPhone = "buyerPhone"
        case consumerId = "consumerId"
        case shopId = "shopId"
        case ticket = "ticket"
    }
    
    
    // 如果要 JSON -> Son 必须实现这个方法
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        buyerName = try container.decode(String.self, forKey: .buyerName)
        buyerProvince = try container.decode(String.self, forKey: .buyerProvince)
        buyerCity = try container.decode(String.self, forKey: .buyerCity)
        buyerArea = try container.decode(String.self, forKey: .buyerArea)
        buyerStreet = try container.decode(String.self, forKey: .buyerStreet)
        buyerAddress = try container.decode(String.self, forKey: .buyerAddress)
        buyerNick = try container.decode(String.self, forKey: .buyerNick)
        buyerPhone = try container.decode(String.self, forKey: .buyerPhone)
        consumerId = try container.decode(String.self, forKey: .consumerId)
        shopId = try container.decode(String.self, forKey: .shopId)
        ticket = try container.decode(String.self, forKey: .ticket)
    }
    // 如果要 Son -> JSON 必须实现这个方法
    func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(buyerName, forKey: .buyerName)
        try container.encode(buyerProvince, forKey: .buyerProvince)
        try container.encode(buyerCity, forKey: .buyerCity)
        try container.encode(buyerArea, forKey: .buyerArea)
        try container.encode(buyerStreet, forKey: .buyerStreet)
        try container.encode(buyerAddress, forKey: .buyerAddress)
        try container.encode(buyerNick, forKey: .buyerNick)
        try container.encode(buyerPhone, forKey: .buyerPhone)
        try container.encode(consumerId, forKey: .consumerId)
        try container.encode(shopId, forKey: .shopId)
        try container.encode(ticket, forKey: .ticket)
    }
    

    func toString() {
        print("user : buyerName = \(buyerName), buyerProvince = \(buyerProvince), buyerCity = \(buyerCity), buyerArea = \(buyerArea), buyerStreet = \(buyerStreet), buyerAddress = \(buyerAddress), buyerNick = \(buyerNick), buyerPhone = \(buyerPhone), consumerId = \(consumerId), shopId = \(shopId), ticket = \(ticket)")
    }
}
