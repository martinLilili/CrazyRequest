//
//  DataManager.swift
//  CrazyRequest
//
//  Created by cruzr on 2019/10/23.
//  Copyright © 2019 martin. All rights reserved.
//

import UIKit

class DataManager: NSObject {
    
    static let share = DataManager()
    
    var selectUsers = [User]()
    
    override init() {
        super.init()
    }

}
