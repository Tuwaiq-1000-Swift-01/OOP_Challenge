//
//  ViewController.swift
//  2-OOP_Challenge
//
//  Created by Abdullah Bajaman on 10/01/2022.
//

import UIKit
/*
 Create BookStore that contains Book name , Author name , Price , Number of Books
 Add print method to prints BookStore details✅
 Add Initializer function✅
 Create object✅
 Implement Inheritance concept✅
 Implement Compositions concept✅
 Use Overriding✅ and Overloading
 Implement Access Control✅
 Add setters & getters✅
 Implement Encapsulation concept
 Implement Polymorphism concept
 */
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let bookStore = BookStore()
        let author1 = Author(name: "Abdullah")
        let author2 = Author(name: "Osama")
        let author3 = Author(name: "Ali")
        let author4 = Author(name: "Sultan")

        let book1 = Book(title: "iOS Dev", author: author1, price: 500)
        let book2 = Book(title: "iOS Design", author: author2, price: 200)
        let book3 = Book(title: "iOS Autolayout", author: author3, price: 130)
        let book4 = Book(title: "iOS Tricks", author: author4, price: 400)
        book1.printBookInfo()
        book2.printBookInfo()
        book3.printBookInfo()
        book4.setPrice(price: 300)
        book4.printBookInfo()
        
        bookStore.bookType()
        book1.bookType()
        print(BookStore.numBooks)

        print(book1.name)
    }


}

// book store      -- book --      author
// @booksNumber     title           name
// name             price
// #setBookPrice
// #bookInfo        #bookInfo

class BookStore {

    static var numBooks: Int = 0 // computed var
    let name = "Tuwiq Library"

//    func newBook(title: String, author: String, price: Double){
//        Book(title: title, author: author, price: price)
//        BookStore.numBooks += 1
//    }
    
    
    func bookType(){
        print("Paper Book")
    }
}
class Book : BookStore{
    var title: String
    var author: Author
    private var price: Double
    
    init(title: String, author: Author, price: Double){
        self.title = title
        self.author = author
        self.price = price
        BookStore.numBooks += 1
    }
    func printBookInfo(){
        
        print("Title: \(self.title), Autohr Name: \(self.author.name), Price: SAR\(self.price)")
    }
    override func bookType() {
        print("PDF Book")
    }
    
    func setPrice(price: Double){
        self.price = price
    }
}
class Author{
    var name: String
    init(name: String){
        self.name = name
    }
}


