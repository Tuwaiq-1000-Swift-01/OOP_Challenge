//
//  BookStore.swift
//  OOP
//
//  Created by Majed Alshammari on 07/06/1443 AH.
//
import UIKit
import Foundation

class BookStore {
    var bookName:String
    var authorName:String
    
   private var price:Double
    var numberOfBooks:Int
    var building:Building

    var updatedPrice:Double {
        get {
            price
        } set(Value) {
            price = Value
        }
    }
    
    init(bookName:String,authorName:String,price:Double,numberOfBooks:Int,building:Building) {
        self.bookName = bookName
        self.authorName = authorName
        self.price = price
        self.numberOfBooks = numberOfBooks
        self.building = building
    }
    
    func description(){
        print("Book name is \(bookName), Author name is \(authorName), price is \(price), Number of books: \(numberOfBooks)")
    }
}


class Building{
    var floor:Int = 0
    var gates:Int = 0
    
    init(floor:Int, gates:Int){
        self.floor = floor
        self.gates = gates
    }
    
}



class Books:BookStore{
     func description(building:Building) {
        super.description()
        print("Building floor : \(building.floor), Gate number \(building.gates)")
    }
    
 
class SecondBookStore:BookStore{
        override func description() {
            print("Number of books : \(numberOfBooks)")
        }
    }
    
}


var firstBook = BookStore(bookName: "The Storytell", authorName: "Jim Henson", price: 78.00, numberOfBooks: 16, building: Building(floor: 2, gates: 4))

var secondBook = Books(bookName: "The old man and the sea", authorName: "Ernest Hemingway", price: 43.00, numberOfBooks: 7, building: Building(floor: 1, gates: 2))
                           
var thirdBook = BookStore(bookName: "Don't Quit", authorName: "Drew Daywalt", price: 32.00, numberOfBooks: 19, building: Building(floor: 2, gates: 1))



