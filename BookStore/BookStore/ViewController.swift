//
//  ViewController.swift
//  BookStore
//
//  Created by A A on 10/01/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
  @IBOutlet weak var tableView: UITableView!
  
  //Create object
  var books = [BookStore]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    tableView.delegate = self
    tableView.dataSource = self
    
    bookStore()
  }
  
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    books.count
  }
  
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
    let book = books[indexPath.row]
    
    cell.bookName.text = book.bookName
    cell.authorName.text = "By \(book.authorName)"
    cell.price.text = "\(book.price) SR"
    cell.imageView?.image = book.bookImage
    
    return cell
  }
  
  
  func bookStore(){
    books.append(BookStore(bookName: "iOS Programming",
                           authorName: "Christian Keur",
                           price: 178,
                           numberOfBooks: 3,
                           bookImage: #imageLiteral(resourceName: "firstBook")))
    
    books.append(BookStore(bookName: "Swift Programming",
                           authorName: "Mikey Ward",
                           price: 150,
                           numberOfBooks: 2,
                           bookImage: #imageLiteral(resourceName: "secondBook")))
    
    books.append(BookStore(bookName: "Forge Your Future with OS",
                           authorName: "VM Brasseur",
                           price: 200,
                           numberOfBooks: 4,
                           bookImage: #imageLiteral(resourceName: "thirdBook")))
  }
  
}

