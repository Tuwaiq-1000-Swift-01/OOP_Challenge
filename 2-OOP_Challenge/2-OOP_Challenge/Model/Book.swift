//
//  Book.swift
//  2-OOP_Challenge
//
//  Created by Abdullah Bajaman on 10/01/2022.
//

import Foundation
class Book : BookStore{
    var title: String
    var author: Author // Compositions
    private var price: Double //Access Control, Encapsulation
    
    init(title: String, author: Author, price: Double){
        self.title = title
        self.author = author
        self.price = price
        BookStore.numBooks += 1
    }
    func printBookInfo(){ //getter
        
        print("Title: \(self.title), Autohr Name: \(self.author.name), Price: SAR\(self.price)")
    }
    
    override func bookType() { // Overriding
        print("PDF Book")
    }
    
    func setPrice(price: Double){ // Setter
        self.price = price
    }
    func setPrice(){ // Polymorphism, Overloading
        self.price = 50
    }
}
