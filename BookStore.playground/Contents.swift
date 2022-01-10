import Foundation

class BookStore {
  
  var bookName: String
  var autherName: String
  
  // Encapsulation concept
  private var price: Double
  var numberOfBooks: Int
  var ageOfReaders: String
  
  // setters & getters
  var priceDiscount: Double{
    get{
      price
    }
    set (Value){
      price = Value * price/100
    }
  }
  
  init(bookName: String,
       autherName: String,
       price: Double,
       numberOfBooks: Int,
       ageOfReaders: String){
    self.bookName = bookName
    self.autherName = autherName
    self.price = price
    self.numberOfBooks = numberOfBooks
    self.ageOfReaders = ageOfReaders
  }
  
  
  init(){
    self.bookName = "the happiness"
    self.autherName = "Ameera"
    self.price = 30.0
    self.numberOfBooks = 5
    self.ageOfReaders = "30"
  }
  
  // method to prints BookStore details
  func bookDetails(){
    print("Tittle:\(bookName), Auther name:\(autherName), Price = \(price), Number of books :\(numberOfBooks)")
  }
  
  // Overloading
  func bookDetails(age: String ){
    print("Tittle:\(bookName), Auther name:\(autherName), Price = \(price), Number of books :\(numberOfBooks),Age of Readers: \(age)")
    
  }
}

// Create object  Implement Inheritance
class Book: BookStore{
  
  // Overriding
  override init() {
    super.init()
    self.autherName = "Aisha"
  }
 
}
print("\n#### start ####\n\n\n")

let book1 = BookStore()
print(book1.bookDetails())

let book2 = BookStore(bookName: "XXX",
                      autherName: "Ahmad",
                      price: 44.0,
                      numberOfBooks: 3,
                      ageOfReaders: "18 - 40")

print("\n\nbookname: \(book2.bookName), Auther name: \(book2.autherName), Price = \(book2.priceDiscount), Number of books : \(book2.numberOfBooks), Age of readers: \(book2.ageOfReaders)")


let book3 = Book()
print("\n\nAuther name: \(book3.autherName)\n\n")

let book4 = BookStore()
book4.bookDetails(age: "16 - 50")
print("\n\(book4)")
