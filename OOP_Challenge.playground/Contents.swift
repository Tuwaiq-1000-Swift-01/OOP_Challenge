import UIKit
import CoreGraphics

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
  
  
  var priceOnSAR:Double {
    // getters
    get {
      price / 3.75
    }
    // setters
    set(Value) {
      price = Value
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



// Create object
var book0 = BookStore(name: "Programming iOS 14", author: "Matt Neuburg", price: 14.04, numberOfBooks: 5,releaseDate: ReleaseDate(day: 1, month: 12, year: 2020))

book0.printBookDetalis()




var book1 = Book(name: "Head First Swift", author: "Jon Manning and Paris Buttfield-Addison", price: 67.89, numberOfBooks: 2, releaseDate: ReleaseDate(day: 18, month: 11, year: 2021))


book1.printBookDetalis()
// Getter Price after converting it to Saudi riyals
print(book1.priceOnSAR)
// Setter Price
book1.priceOnSAR = 50
print(book1.priceOnSAR)



var book2 = BookTow(name: "Layout Essentials Revised and Updated", author: "Beth Tondreau", price: 0.0, numberOfBooks: 2, releaseDate: ReleaseDate(day: 1, month: 2, year: 2019))

book2.printBookDetalis()
