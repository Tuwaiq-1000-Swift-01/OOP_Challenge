//
//  Model.swift
//  BookStore
//
//  Created by Jawaher🌻 on 07/06/1443 AH.

import Foundation

class Book {
    let name: String
    let Author: String
    var Price: Int
    let image: String
    let NumberOfPages: Int
    
    

    
    init(name:String ,Author:String , Price: Int , image: String , NumberOfPages: Int) {
        self.name = name
        self.Author = Author
        self.Price = Price
        self.image = image
        self.NumberOfPages = NumberOfPages
    }
    
    var price:Int {

      get {
        Price
      }
      set(Value) {
        Price = Value
      }
    }
    
    func BookDescription() {
        print("Book Information:  Book Name: \(name) , Book Author: \(Author) , Book Price: \(Price),  Book image: \(image),  Number Of pages: \(NumberOfPages)")
    }
}

let allBooks = [
    Book(name: "كن بخير", Author: "عائشه العمران", Price: 47, image: "i1", NumberOfPages: 94),
    Book(name: "مع الله ", Author: "علي الفيفي", Price: 50, image: "i", NumberOfPages: 100),
    Book(name: " نظرية الفستق", Author: "فهد الاحمدي ", Price: 29, image: "i2", NumberOfPages: 224),
    Book(name: "ملهمون", Author: "صالح الخزيم ", Price: 53, image: "i3", NumberOfPages: 130),
    Book(name: "ابق قوياً", Author: "علي الفيفي", Price: 65, image: "i4", NumberOfPages: 150)
]
    

class EduBook: Book {
    
    override func BookDescription() {
        print("Book Information:   Name: \(name) ,  Author: \(Author) , Price: \(Price), image: \(image), Number Of pages: \(NumberOfPages)")
        
    }
}
