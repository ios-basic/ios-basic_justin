//
//  ViewController.swift
//  Chapter06-SQLite3
//
//  Created by justin dongwook Jung on 2021/05/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        let dbPath = self.getDBPath()
        self.dbExecute(dbPath: dbPath)
       
    }
    
    func dbExecute(dbPath: String) {
        // SQLite 연결 정보를 담는 객체
        var db: OpaquePointer? = nil
        guard sqlite3_open(dbPath, &db) == SQLITE_OK else {
            print("Database Connect Fail")
            return
        }
        
        defer {
            print("Close Database Connection")
            sqlite3_close(db)
        }
        
        // 컴파일된 SQL을 담는 객체
        var stmt: OpaquePointer? = nil
                
        let sql = "CREATE TABLE IF NOT EXISTS sequence (num INTEGER)"
        
        guard sqlite3_prepare(db, sql, -1, &stmt, nil) == SQLITE_OK else {
            print("Prepare Statement Fail")
            return
        }
        
        defer {
            print("Finalize Statement")
            sqlite3_finalize(stmt)
        }
        
        if sqlite3_step(stmt) == SQLITE_DONE {
            print("Create Table Success!")
        }
            
    }
    
    func getDBPath() -> String {
        let fileMgr = FileManager()
        let docPathURL = fileMgr.urls(for: .documentDirectory, in: .userDomainMask).first!
        let dbPath = docPathURL.appendingPathComponent("db.sqlite").path
        
        if fileMgr.fileExists(atPath: dbPath) == false {
            let dbSource = Bundle.main.path(forResource: "db", ofType: "sqlite")
            try! fileMgr.copyItem(atPath: dbSource!, toPath: dbPath)
        }
        
        return dbPath
    }
    
    

}

