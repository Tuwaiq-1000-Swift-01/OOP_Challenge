//
//  BookStore.swift
//  2-OOP_Challenge
//
//  Created by Abdullah Bajaman on 10/01/2022.
//

import Foundation
class BookStore {

    static var numBooks: Int = 0
    let name = "Tuwiq Library"
    var books : [Book] = []
    
    func addBook(title: String, author: Author, price: Double){
        let newBook = Book(title: title, author: author, price: price)
        books.append(newBook)
    }
    func bookType(){
        print("Paper Book")
    }
}
