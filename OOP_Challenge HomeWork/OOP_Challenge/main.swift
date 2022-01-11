//
//  main.swift
//  OOP_Challenge
//
//  Created by Noura Alahmadi on 07/06/1443 AH.
//

class BookStore{
    var bookName: String
    var authorName: String
    var price: Double
    var numberOfBooks: Int
    private var bookID: String
    var updatedBookID: String {
        get{
            return self.bookID
        }
        set{
            self.bookID = "the new book id is: \(newValue)"
        }
    }
    
    init(){
        self.bookID = "1"
        self.bookName = "bookName"
        self.authorName = "authorName"
        self.price = 0.0
        self.numberOfBooks = 1
        
    }
    
    func printDetails (){
        print("the details of Books store is :\n  book Name: \(bookName) \n author Name: \(authorName) \n price: \(price) \n nimer Of Books: \(numberOfBooks)")
    }
    func printDetails(bookName: String){
        print("the details of Books store is :\n  book Name: \(bookName) ")
    }
}


class ProgrammingBooks : BookStore{
    
    var programmingLanguage: String
    
    init(programmingLanguage: String){
        self.programmingLanguage = programmingLanguage
        super.init()
    }
    
    override func printDetails() {
        print("programming language is \(programmingLanguage)")
    }
    override func printDetails(bookName: String) {
        print("the name of book is: \(bookName)")
    }
}

public class SwiftBooks{
    
    var swiftLanguage : ProgrammingBooks = .init(programmingLanguage: "Swift")
    
}

var myBook = BookStore()
myBook.bookName = "Swift 101"
myBook.authorName = "Nora alahmadi"
myBook.price = 76.45
myBook.numberOfBooks = 40
myBook.updatedBookID = "qrnproenv3po"


print("""
book name : \(myBook.bookName)
author name: \(myBook.authorName)
price : \(myBook.price)
number Of Books : \(myBook.numberOfBooks)
book ID : \(myBook.updatedBookID)
""")
