

class BookStore{
  
  var bookName:String
  var authorName:String
  var price: Double
  var numOfBooks:Int
  var leftBooks : Int{
    get{
      numOfBooks
    }
    set(Value){
      numOfBooks = numOfBooks -  Value
      
    }
  }
  init(bookName:String, authorName:String,price:Double, numOfBooks:Int){
    self.bookName = bookName
    self.authorName = authorName
    self.price = price
    self.numOfBooks = numOfBooks
    
  }
  init(){
    
    self.bookName = "Once Upon A Time"
    self.authorName = "Alexander Twist"
    self.price = 20.5
    self.numOfBooks = 20
  }
  
  func bookDetails(){
    print("Title: \(bookName) Author: \(authorName)\nPrice: \(price) Number Of Books: \(numOfBooks)")
  }
  
  func bookDetails(discount:Double){
    
    price = price - (discount/100)
    print("Title: \(bookName) Author: \(authorName)\n Price: \(price) Number Of Books: \(numOfBooks)")
  }
}



class Book:BookStore {
  var category: String
  
  override init() {
    self.category = "Fiction"
    super.init()
  }
}

class TopReading{
  
  let topReadingBooks: [BookStore]
  init(topReadingBooks: [BookStore]){
    self.topReadingBooks = topReadingBooks
  }
  
}


let book = BookStore()
book.bookDetails(discount: 10)
print("\n\n*****************\n\n")
//book2.leftBooks = 10
print (book.leftBooks)

let book2 = BookStore(bookName: "LORD", authorName: "Oliver Alan", price: 34.4, numOfBooks: 12)
book2.bookDetails()

print("\n\n*****************\n\n")

book2.leftBooks = 10
print (book2.leftBooks)
