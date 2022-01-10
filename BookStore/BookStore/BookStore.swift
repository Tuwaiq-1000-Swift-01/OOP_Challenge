//
//  BookStore.swift
//  BookStore
//
//  Created by Anas Hamad on 07/06/1443 AH.
//

import Foundation

internal class BookStore {
    
    var bookName : String
    var autherName : String
    //    Implement Encapsulation concept
    private var price : Int
    var bookNumber :String
    
    //    Add setters & getters
    var discountPrice : Int {
        
        get {
            price-20
        }
        set(Value){
            price = Value
        }
    }
    //    Add Initializer
    init(bookName:String,autherName:String,price:Int,bookNumber:String){
        self.bookName = bookName
        self.autherName = autherName
        self.bookNumber = bookNumber
        self.price = price
    }
    //    print Detail
    func printDetails(){
        
        print("This Book name is \(bookName) and the auther \(autherName) and the price \(price) and number is \(bookNumber) ")
        
    }
    
}

// Implement Inheritance concept
class Shelfs : BookStore {
    
    var horror : String = "Horror"
    
    //    overLoading func
    func printDetails(catgory:String) {
        self.horror = catgory
    }
}

//Implement Polymorphism concept
class avalibelity : Shelfs{
    var isAvalibale : Bool = true
    
    override func printDetails() {
        print("this book is \(isAvalibale)")
    }
    
    
}

class BookOrders  {
    //    Implement Compositions concept
    var productOrder : BookStore
    
    init(productOrder : BookStore){
        self.productOrder = productOrder
    }
    func printOder (){
        print("Your Order is \(productOrder.bookName)")
    }
    
}

// add Object
var book1 = BookStore(bookName: "Deep Work", autherName: " Cal Newport", price: 84, bookNumber: "09ij9")


var book2 = Shelfs(bookName: "Everybody Lies", autherName: "Seth Stephens-Davidowitz", price: 70, bookNumber: "jfvjl")

var book3 = avalibelity(bookName: "The Snowball", autherName: " Alice Schroeder", price: 121, bookNumber: "g345g")
