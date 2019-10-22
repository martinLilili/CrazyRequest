//
//  DeviceModel.swift
//  CrazyRequest
//
//  Created by cruzr on 2019/10/22.
//  Copyright © 2019 martin. All rights reserved.
//

import UIKit

class DeviceModel {
    var name = ""
    var store = ""
    var itemid = ""
    var deviceid = ""
    var color = ""
    

    init(name : String, store : String, itemid : String, deviceid : String, color : String) {
        self.name = name
        self.store = store
        self.itemid = itemid
        self.deviceid = deviceid
        self.color = color
    }
}
