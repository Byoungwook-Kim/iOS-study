//
//  ViewController.swift
//  SQLite3
//
//  Created by Byoung_wook on 17/12/2019.
//  Copyright © 2019 Byoung_wook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        var db: OpaquePointer? = nil
        var stmt: OpaquePointer? = nil
        
        let fileMgr = FileManager()
        let docPathURL = fileMgr.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        let dbPath = docPathURL.appendingPathComponent("db.sqlite").path
        
        let sql = "CREATE TABLE IF NOT EXIST sequence (num INTEGER)"
        
        if sqlite3_open(dbPath, &db) == SQLITE_OK{
            sqlite3_prepare(db, sql, -1, &stmt, nil)
            sqlite3_step(stmt)
            sqlite3_finalize(stmt)
            sqlite3_close(db)
        } else {
            print("Database Connect Fail")
            return
        }
        
        sqlite3_close(db)
    }else {
    
    
        
        
        
        // Do any additional setup after loading the view.
    }


}

