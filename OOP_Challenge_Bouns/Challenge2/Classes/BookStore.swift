//
//  BookStore.swift
//  Challenge2
//
//  Created by Aisha Ali on 1/10/22.
//

import Foundation

class BookStore{
  
  var bookName:String
  var authorName:String
  var price: Double
  var numOfBooks:Int
  
  //MARK: - Setters and Getters
  var leftBooks : Int{
    get{
      numOfBooks
    }
    set(Value){
      numOfBooks = numOfBooks -  Value
      
    }
  }
  init(bookName:String, authorName:String,price:Double, numOfBooks:Int, leftBooks: Int){
    self.bookName = bookName
    self.authorName = authorName
    self.price = price
    self.numOfBooks = numOfBooks
    self.leftBooks = leftBooks
    
  }
  init(){
    
    self.bookName = "Once Upon A Time"
    self.authorName = "Alexander Twist"
    self.price = 20.5
    self.numOfBooks = 20
  }
  
  //MARK: - OverLaping

  func bookDetails(){
    print("Title: \(bookName) Author: \(authorName)\nPrice: \(price) Number Of Books: \(numOfBooks)")
  }
  
  func bookDetails(discount:Double){
    
    price = price - (discount/100)
    print("Title: \(bookName) Author: \(authorName)\n Price: \(price) Number Of Books: \(numOfBooks)")
  }
}


