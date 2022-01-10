
import Foundation

//MARK: - BookStore that contains Book name , Author name , Price , Number of Books & Initializer function & print func & object create & Compositions concept & Polymorphism & setters & getters.

protocol opinion{
    func opinionBook()
}

class BookStore: opinion {
    func opinionBook() {
        print("I hope you like it")
    }
    
    var name: String
    var author: String
    var price: Double
    var noBook: Int
    
    init(name: String, author:String, price: Double, noBook: Int){
        self.name = name
        self.author = author
        self.price = price
        self.noBook = noBook
        
    }
    
    var tax: Double {
        get {
            (price)
        }set(taxp) {
            price = taxp * 15 / 100
        }
        
    }
    
    func detilesBook() {
        print("Book name: \(name), Author name: \(author), Price: \(price), Number of Books: \(noBook)")
    }
}

var book1 = BookStore(name: "hope", author: "ibrahim", price: 49, noBook: 50)

book1.detilesBook()
book1.opinionBook()
book1.tax = book1.price
print("the tax = \(book1.tax) ")

//MARK: - Inheritance concept & Overriding and Overloading & Access Control & Encapsulation


class Novel: BookStore{
    private let type: String
    
    init(name: String, author: String, price: Double, noBook: Int, type: String) {
        self.type = type
        super.init(name: name, author: author, price: price, noBook: noBook)
    }
    

    override func detilesBook() {
        print("Book name: \(name), Author name: \(author), Price: \(price), Number of Books: \(noBook), Type: \(type)")
    }
}

let novel1 = Novel(name: "Success", author: "Ibrahim", price: 29.0, noBook: 30, type: "Drama")
novel1.detilesBook()


class YearOfPubl{
    let year: String
    let month: String
    
    init(year: String, month: String) {
        self.year = year
        self.month = month
    }
}

let year = YearOfPubl(year: "2020", month: "1")

