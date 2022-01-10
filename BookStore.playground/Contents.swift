import UIKit

class BookStore {

  //MARK: - properities
  
  var bookName: String
  var authorName: String
  var price : Double
  var numberOfBooks : Int
          

  //MARK: - initializer
  
  init(bookName: String, authorName: String, price : Double, numberOfBooks : Int) {
    self.bookName = bookName
    self.authorName = authorName
    self.price = price
    self.numberOfBooks = numberOfBooks
  }
  
  
  //MARK: - setters & getters
  
  var addedVat : Double {
    get {
      ((price * 15) / 100) + price
    }
    set {
      self.price = newValue
    }
  }

  
  //MARK: - print function + implement encapsulation
  
 fileprivate func printBookStore() {
    print("\(bookName) , \(authorName), \(price), \(numberOfBooks)")
    }

  
  //MARK: - use overloading + use Access Control
  
 public func printBookStore(_ :String) {
    print("my book store")
    }
  
  
  func countBooksProfit() {
    let profit = 10.0
    let bookProfit = (profit/price) * 100
    print(bookProfit)
  }
  
}


//MARK: - creating object

let book1 = BookStore(bookName: "The Power Of Now",
                      authorName: "Eckhart Tolle",
                      price: 65.22,
                      numberOfBooks: 20)
book1.printBookStore()
print(book1.addedVat)
book1.countBooksProfit()



//MARK: - creating subclass that inheret from 'BookStore' class

class BookStoreBranch: BookStore {

  var city = "Jeddah"
 

  
  //MARK: - use overriding
  
  override func printBookStore() {
    print("\(city)")
  }
  
  
  // MARK: - use polymorphism concept: same func but with different behaviour
  
  override func countBooksProfit() {
    printBookStore(_:)
  }
}


// MARK: - use composition concept

struct Book {
  let book : BookStore
  var bookSigning = Date()
}

