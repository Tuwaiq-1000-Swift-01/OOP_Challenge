//
//  BookStore.swift
//  OOP_Challenge_Bonus
//
//  Created by Marzouq Almukhlif on 07/06/1443 AH.
//

import Foundation

// For Compositions
class ReleaseDate {
  var day: Int
  var month: Int
  var year: Int
  
  init(day: Int, month: Int, year: Int) {
    self.day = day
    self.month = month
    self.year = year
  }
}

// BookStore with contains Book name , Author name , Price , Number of Books
class BookStore {
  var name:String
  var author:String
  // Access Control price to private
  private var price:Double
  var numberOfBooks:Int
  var releaseDate:ReleaseDate // Composition
  
  var priceOnUSD:Double {
    // getters
    get {
      price
    }
    // setters
    set(Value) {
      price = Value
    }
  }
  var priceOnSAR:Double {
    // getters
    get {
      price * 3.75
    }
  }
  
  // Initializer function
  init(name:String,
       author:String,
       price:Double,
       numberOfBooks:Int,
       releaseDate:ReleaseDate){
    self.name = name
    self.author = author
    self.price = price
    self.numberOfBooks = numberOfBooks
    self.releaseDate = releaseDate
  }
  
  
  func printBookDetalis(){
    print("Book name ==> \(name)\nAuthor name ==> \(author)\nPrice ==> \(price)\nNumber of Books ==> \(numberOfBooks)")
  }
  
  
}
// Inheritance from BookStore
class Book: BookStore {
  
  // Overriding function printBookDetalis
  override func printBookDetalis() {
    print("\n")
    // Overloading function printBookDetalis
    super.printBookDetalis()
    print("ReleaseDate ==> \(releaseDate.day)/\(releaseDate.month)/\(releaseDate.year)")
  }
  
}


// Polymorphism
class BookTow : BookStore {
  
  
  override func printBookDetalis() {
    print("\n")
    print("Author ==> \(author)")
  }
  
}
