//
//  Book.swift
//  BookManager
//
//  Created by Byoung_wook on 02/09/2019.
//  Copyright © 2019 Byoung_wook. All rights reserved.
//

struct Book {
    var name : String
    var genre : String
    var author : String
    
    func bookPrint(){
        print("Name : \(name)")
        print("Genre : \(genre)")
        print("Author : \(author)")
        print("------------")
    }
}

