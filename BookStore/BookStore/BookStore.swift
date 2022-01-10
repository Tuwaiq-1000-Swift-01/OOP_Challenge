//
//  BookStore.swift
//  BookStore
//
//  Created by A A on 10/01/2022.
//

import UIKit

//Create BookStore
class BookStore {
  
  let bookName: String
  let authorName: String
  let price: Double
  let numberOfBooks: Int
  let bookImage: UIImage
  
  //Initializer function
  init(bookName: String, authorName: String, price: Double, numberOfBooks:Int, bookImage: UIImage){
    self.bookName = bookName
    self.authorName = authorName
    self.price = price
    self.numberOfBooks = numberOfBooks
    self.bookImage = bookImage
  }
  
  //setters & getters
  var discount: Double {
    get {
      price - ((price * 30) / 100 )
    }
    set{
      newValue
    }
  }
  
  //Method to prints BookStore details
  func printDetails(){
    print("The book name is: \(bookName), the author name is: \(authorName), the price is: \(price), the number of books is: \(numberOfBooks)")
  }
  
}

//Inheritance
class kidBooks: BookStore {
  
  private let readingAge: String = "Kids" //Encapsulation //Access Control
  let type: TypeOfSubject = .science 
  
  //Overriding //Polymorphism
  override func printDetails() {
    print("The book name is: \(bookName), the author name is: \(authorName), the price is: \(price), the number of books is: \(numberOfBooks), the reading age is: \(readingAge)")
  }
  
  //Overloading
  func showMessage(message: String){
    print(message)
  }
  
  func showMessage(message: String, isFinish: Bool){
    print(message)
  }
  
  
}

enum TypeOfSubject {
  case science, art, foreignLanguages
}









