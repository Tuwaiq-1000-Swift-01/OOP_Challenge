//
//  OOP.swift
//  BookStore
//
//  Created by Osama folta on 07/06/1443 AH.
//

import Foundation

class Book{
    var name:String
    var author:String
    var price:Double

    
    init(name:String,author:String,price:Double){
        
        self.name=name
        self.author=author
        self.price=price
        BookStore.addBook()
    }
   
}
class BookStore{
  private static var numberOfBooks:Int = 0
    func getNumberOfBooks() -> Int{
        BookStore.numberOfBooks
    }
    func  bookDetails(book:Book){
        print(book.price,book.author,book.name)
    }
    static func addBook(){
        BookStore.numberOfBooks += 1
    }
    func  bookDetails(){
        print(" Polymorphism concept , use the same func name more than once")
    }
    
   
}

fileprivate class ModifyBook:BookStore{
    override func bookDetails(book: Book) {
        print(book.name,book.price)
    }
}


