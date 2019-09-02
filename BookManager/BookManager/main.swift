//
//  main.swift
//  BookManager
//
//  Created by Byoung_wook on 02/09/2019.
//  Copyright © 2019 Byoung_wook. All rights reserved.
//

import Foundation

var book1 = Book(name: "햄릿",genre: "비극", author: "셰익스피어")
//book1.bookPrint()
var book2 = Book(name: "누구를 위하여 종을 울리나",genre: "전쟁소설", author: "헤밍웨이")
//book2.bookPrint()
var book3 = Book(name: "죄와벌",genre: "사실주의", author: "톨스토이")
//book3.bookPrint()

var myBookManager = BookManager()
myBookManager.registerBook(bookObject: book1)
myBookManager.registerBook(bookObject: book2)
myBookManager.registerBook(bookObject: book3)

print(myBookManager.showAllBook())

print("number of books : \(myBookManager.countBooks())")

var searchResult = myBookManager.serchBook(name: "햄릿")


if searchResult != nil {
    print("\(searchResult!) 를 찾았습니다.")
}else{
    print("찾으시는 책이 없는데요")
}

myBookManager.removeBook(name: "죄와벌")
print(myBookManager.showAllBook())
