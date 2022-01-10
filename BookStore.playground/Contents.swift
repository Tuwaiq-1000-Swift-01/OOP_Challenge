import UIKit


//For Compositions
enum MyCategory {
    case ProgrammingBook
    case HardwareBook
}

//BookStore
class BookStore {
    var name : String
    var authorName : String
    var price : Double
   // Access Control
   private var numberOfBooks : Int
    //Initializer function
    init(_ name : String,_ authorName: String , _ price : Double, _ numberOfBooks: Int) {
        self.name = name
        self.authorName = authorName
        self.price = price
        self.numberOfBooks = numberOfBooks
    }
    
    // Getter & Setter
    var checkQuantity:Int {
      get {
        numberOfBooks
      }
      set(afterSell) {
          numberOfBooks = afterSell - 1
      }
    }
    
    //Printing Book Details
    func printBookDescription(){
       print(
            """
    Book Details:
    Name : \(name)
    Author :\(authorName)
    Price : \(price)
    Quantity : \(numberOfBooks)
    """ )
    }
}

//Create object
let Book = BookStore("Layout Essentials Revised and Updated", "Beth Tondreau",120.0 , 3)
Book.printBookDescription()

// Inheritance concept & Polymorphism concept
class MyBooks : BookStore {
    
    //Compositions concept
    var TypeOfBook : MyCategory = .ProgrammingBook
    //Overriding
    override func printBookDescription() {
        print(
             """
     Book Details:
     Name : \(name)
     Author :\(authorName)
     Price : \(price)
     Quantity : \(checkQuantity)
     """ )
    }
    
    //Overloading
    func printBookDescription(TypeOfBook : MyCategory){
        print(
             """
     My Amazing Book Details:
     Name : \(name)
     Author :\(authorName)
     Price : \(price)
     Quantity : \(checkQuantity)
     Type : \(TypeOfBook)
     """ )
    }
}

//Encapsulation concept
let favBook = MyBooks("Programming IOS 14 ", "Matt Neuburg",250.0 , 6)
favBook.printBookDescription(TypeOfBook: .ProgrammingBook)

print(favBook.checkQuantity)
favBook.checkQuantity = 3
print(favBook.checkQuantity)

