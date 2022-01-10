//
//  ViewController.swift
//  Challenge2
//
//  Created by Aisha Ali on 1/10/22.
//

import UIKit

class ViewController: UIViewController {
  
  var count = 0
  
  let books = [BookStore(bookName: "Child witnesses", authorName: "Mark Twain", price: 23.5, numOfBooks: 10, leftBooks: 5 ),
               BookStore(),
               BookStore(bookName:"Dracula" , authorName: "Bram Stoker", price: 30, numOfBooks: 8, leftBooks: 3),
               BookStore(bookName: "Secret Garden", authorName: "Frank Benjamin", price: 8.9, numOfBooks: 7, leftBooks: 6)
  ]
  
  
  @IBOutlet weak var bookTitle: UILabel!
  @IBOutlet weak var author: UILabel!
  @IBOutlet weak var price: UILabel!
  @IBOutlet weak var numOfBooks: UILabel!
  @IBOutlet weak var stocks: UILabel!
  
  @IBOutlet weak var button: UIButton!
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    bookTitle.text = "Somthing in The Rain"
    author.text = "Sandra Cruse "
    price.text = "12"
    numOfBooks.text = "12"
    stocks.text = "3"
    // Do any additional setup after loading the view.
  }
  
  
  
  @IBAction func buttonPressed(_ sender: UIButton) {
    
    
    
    
    if count < books.count - 1{
      
      bookTitle.text = books[count].bookName
      author.text = books[count].authorName
      price.text = "\(books[count].price)"
      numOfBooks.text = "\(books[count].numOfBooks)"
      stocks.text = "\(books[count].leftBooks - 5)"
      count += 1
      print(count)
      books[count].bookDetails(discount: 4)
    } else{
      button.isHidden = true
    }
    
  }
}




