//
//  BookManager.swift
//  BookManager
//
//  Created by Byoung_wook on 02/09/2019.
//  Copyright © 2019 Byoung_wook. All rights reserved.
//

import Foundation

class BookManager{
    var bookList = [Book]()
    
    func registerBook(bookObject:Book) {
        bookList += [bookObject]
    }
    
    func showAllBook() -> String {
        var strTemp = ""
        for bookTemp in bookList {
            strTemp += "Name : \(bookTemp.name!)\n"
            strTemp += "Genre : \(bookTemp.genre!)\n"
            strTemp += "author : \(bookTemp.author!)\n"
            strTemp += "____________________\n"
        }
        return strTemp
        
    }
    
    func countBooks() -> Int {
        return bookList.count
        
    }
    
   func serchBook(name:String) -> String?{
    var strTemp = ""
    for bookTemp in bookList {
        if bookTemp.name == name {
            strTemp += "Name : \(bookTemp.name!)\n"
            strTemp += "Genre : \(bookTemp.genre!)\n"
            strTemp += "author : \(bookTemp.author!)\n"
            strTemp += "____________________\n"
            return strTemp
        }
    }
    return nil
    
        
    }
    
   func removeBook(name:String){
    
    for (index, value) in bookList.enumerated() {
        if value.name == name   {
            bookList.remove(at: index)
        }
    }
        
    }
    
}
