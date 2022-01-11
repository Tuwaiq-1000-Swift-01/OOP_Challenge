import Foundation



fileprivate class BookStore {

    var bookName: String
    var authorName: String
    var price: Double
    private var numberOfBooks: Int {
        get {
            return books.count
        }
        set (value) {
            value
        }
    }
    
    init(){
        bookName = ""
        authorName = ""
        price = 0
        numberOfBooks = 0
    }
    
    init(bookName: String, authorName: String, price: Double, numberOfBooks: Int){
        self.bookName = bookName
        self.authorName = authorName
        self.price = price
        self.numberOfBooks = numberOfBooks
    }
    
    func bookDetails(){
        print("Book Name: \(bookName), Author Name: \(authorName), Price: \(price) , Number Of Books: \(numberOfBooks)")
    }
    
    
    // Overloading :
    func bookDetails(publishing: String){
       print("Publishing: \(publishing)")
    }
}

 class Book {
    
    var bTitle = "The Forty Rule"
    var readingPage = 160
    fileprivate var bookStore = BookStore()
    
}

var book = Book()
print(book.readingPage)
var books = [Book]()


fileprivate var bookStore = BookStore(bookName: "Madona",
                          authorName: "Sabah",
                          price: 45.5,
                          numberOfBooks: 21)

fileprivate class researchPaper: BookStore {
    
    override func bookDetails(){
        print("Research Paper Title: \(bookName), Author Name: \(authorName), Price: \(price)")
    }
    
}
