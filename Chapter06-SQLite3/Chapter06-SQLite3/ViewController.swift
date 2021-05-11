//
//  ViewController.swift
//  Chapter06-SQLite3
//
//  Created by justin dongwook Jung on 2021/05/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        // SQLite 연결 정보를 담는 객체
        var db: OpaquePointer? = nil
        // 컴파일된 SQL을 담는 객체
        var stmt: OpaquePointer? = nil
        
//        let fileMgr = FileManager()
//        let docPathURL = fileMgr.urls(for: .documentDirectory, in: .userDomainMask).first!
//        let dbPath = docPathURL.appendingPathComponent("db.sqlite").path
        let dbPath = "/Users/dongwookjung/db.sqlite"
        
        let sql = "CREATE TABLE IF NOT EXISTS sequence (num INTEGER)"
        
        if sqlite3_open(dbPath, &db) == SQLITE_OK {
            if sqlite3_prepare(db, sql, -1, &stmt, nil) == SQLITE_OK {
                if sqlite3_step(stmt) == SQLITE_DONE {
                    print("Creae Table Success")
                }
                sqlite3_finalize(stmt)
            } else {
                print("Prepare Statement Fail")
            }
            sqlite3_close(db)
        } else {
            print("Database Connect Fail")
            return
        }
       
    }


}

