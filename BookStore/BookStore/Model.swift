//
//  Model.swift
//  BookStore
//
//  Created by Maram Al shahrani on 07/06/1443 AH.
//

import Foundation

class Book {
    var name: String
    var auther: String
    var price: Int
    var numberOfBooks: Int
    let image: String

    init(name:String ,auther:String , price: Int , image: String , numberOfBooks: Int) {
        self.name = name
        self.auther = auther
        self.price = price
        self.image = image
        self.numberOfBooks = numberOfBooks
        // setters & getters
        var price:Int {
            get {
                price
            }
            set(Value) {
                price = Value
            }
        }
    }
    func BookDescription() {
        print("Book Information: Book Name: \(name) , Book Author: \(auther) , Book Price: \(price), Book image: \(image), Number Of Books: \(numberOfBooks)")
    }
    func printsBookStore(){
        
    }
}
class bookStore : Book {
    override func printsBookStore() {
        super.printsBookStore()
        print("\(name)","\(price)","\(auther)","\(numberOfBooks)")
    }
}
let contacts =
[
    Book(name: "Good to Great", auther: "Jim Collins", price: 91, image: "1", numberOfBooks: 1),
    Book(name: "No One Is Talking ", auther: "Patricia Lockwood", price: 76, image: "2", numberOfBooks: 8),
    Book(name: "The Brain", auther: " David Eagleman", price: 77, image: "3", numberOfBooks: 9),
    Book(name: "أن تقتل طائرا بريئا", auther: "Harper Lee", price: 84, image: "4", numberOfBooks: 7),
    ]


