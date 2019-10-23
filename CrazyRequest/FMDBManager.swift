//
//  FMDBManager.swift
//  CrazyRequest
//
//  Created by cruzr on 2019/10/23.
//  Copyright © 2019 martin. All rights reserved.
//

import UIKit



class FMDBManager: NSObject {
    
    static let share = FMDBManager()
    
    let databaseFileName = "CRDatabase.sqlite"
    
    var pathToDatabase: String!
    
    var database: FMDatabase!
    
    var queue : FMDatabaseQueue!
    
    override init() {
        super.init()
        
        let documentsDirectory = (NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as NSString) as String
        pathToDatabase = documentsDirectory.appending("/\(databaseFileName)")
        
        _ = createDatabase()
        queue = FMDatabaseQueue(path: pathToDatabase)
    }
    
    func createDatabase() -> Bool {
        var created = false
        
        database = FMDatabase(path: pathToDatabase!)
        
        if database != nil {
            // Open the database.
            if database.open() {
                let createRobotsTableQuery = "create table IF NOT EXISTS users (userid integer primary key autoincrement not null, buyerName text, buyerProvince text, buyerCity text, buyerArea text, buyerStreet text, buyerAddress text, buyerNick text, buyerPhone text, consumerId text, shopId text, ticket text)"
                do {
                    try database.executeUpdate(createRobotsTableQuery, values: nil)
                    created = true
                }
                catch {
                    print("Could not create table.")
                    print(error.localizedDescription)
                }
                
                database.close()
            }
            else {
                print("Could not open the database.")
            }
        }
        database = nil
        
        return created
    }
    
    func loadAllUsers(completionHandler: @escaping (_ users: [User]) -> Void)  {
        var users: [User] = [User]()
        queue.inDatabase({ (db) in
            if db != nil {
                let query = "select * from users"
                do {
                    let results = try db!.executeQuery(query, values: nil)
                    while results.next() {
                        let user = User()
                        user.buyerName =  results.string(forColumn: "buyerName")
                        user.buyerProvince =  results.string(forColumn: "buyerProvince")
                        user.buyerCity =  results.string(forColumn: "buyerCity")
                        user.buyerArea =  results.string(forColumn: "buyerArea")
                        user.buyerStreet =  results.string(forColumn: "buyerStreet")
                        user.buyerAddress =  results.string(forColumn: "buyerAddress")
                        user.buyerPhone =  results.string(forColumn: "buyerPhone")
                        user.consumerId =  results.string(forColumn: "consumerId")
                        user.shopId =  results.string(forColumn: "shopId")
                        user.buyerNick =  results.string(forColumn: "buyerNick")
                        user.ticket =  results.string(forColumn: "ticket")
                        users.append(user)
                    }
                    DispatchQueue.main.async {
                        completionHandler(users)
                    }
                }
                catch {
                    print(error.localizedDescription)
                }
            } else {
                
            }
        })
    }
    
    func loadUsers(consumerId : String, completionHandler: @escaping (_ users: [User], _ db : FMDatabase) -> Void)  {
        var users: [User] = [User]()
        queue.inDatabase({ (db) in
            if db != nil {
                let query = "select * from users where consumerId=?"
                do {
                    let results = try db!.executeQuery(query, values: [consumerId])
                    while results.next() {
                        let user = User()
                        user.buyerName =  results.string(forColumn: "buyerName")
                        user.buyerProvince =  results.string(forColumn: "buyerProvince")
                        user.buyerCity =  results.string(forColumn: "buyerCity")
                        user.buyerArea =  results.string(forColumn: "buyerArea")
                        user.buyerStreet =  results.string(forColumn: "buyerStreet")
                        user.buyerAddress =  results.string(forColumn: "buyerAddress")
                        user.buyerPhone =  results.string(forColumn: "buyerPhone")
                        user.consumerId =  results.string(forColumn: "consumerId")
                        user.shopId =  results.string(forColumn: "shopId")
                        user.buyerNick =  results.string(forColumn: "buyerNick")
                        user.ticket =  results.string(forColumn: "ticket")
                        users.append(user)
                    }
                    DispatchQueue.main.async {
                        completionHandler(users, db!)
                    }
                }
                catch {
                    print(error.localizedDescription)
                }
            } else {
                
            }
        })
    }
    
    
    func updateUser(consumerId : String, shopId : String, ticket : String, buyerPhone : String,buyerName : String,buyerProvince : String,buyerCity : String,buyerArea : String,buyerStreet : String,buyerAddress : String,buyerNick : String, completionHandler: (() -> Void)? = nil) {
        loadUsers(consumerId: consumerId) { (users, db) in
            if users.isEmpty {
                do {
                    let query = "insert into users (consumerId, shopId, ticket, buyerPhone, buyerName, buyerProvince, buyerCity, buyerArea, buyerStreet, buyerAddress, buyerNick) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);"
                    try db.executeUpdate(query, values: [consumerId, shopId, ticket, buyerPhone, buyerName, buyerProvince, buyerCity, buyerArea, buyerStreet, buyerAddress, buyerNick])
                    DispatchQueue.main.async {
                        completionHandler?()
                    }
                } catch  {
                    print("Error enableBroadcast (bind):\(error)")
                }
            } else {
                do {
                    let query = "update users set shopId=?, ticket=?, buyerPhone=?, buyerName=?, buyerProvince=?, buyerCity=?, buyerArea=?, buyerStreet=?, buyerAddress=?, buyerNick=?"
                    try db.executeUpdate(query, values: [shopId, ticket, buyerPhone, buyerName, buyerProvince, buyerCity, buyerArea, buyerStreet, buyerAddress, buyerNick])
                    DispatchQueue.main.async {
                        completionHandler?()
                    }
                }
                catch {
                    print(error.localizedDescription)
                }
            }
        }
    }

}
