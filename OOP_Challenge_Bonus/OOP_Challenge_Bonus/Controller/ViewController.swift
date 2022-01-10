//
//  ViewController.swift
//  OOP_Challenge_Bonus
//
//  Created by Marzouq Almukhlif on 07/06/1443 AH.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate {
  
  // MARK: - Properties
  
  var book0: BookStore!
  var book1: Book!
  var book2: BookTow!
  var Books:[BookStore]!
  
  
  // MARK: - View controller lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    createObjects()
  }
  
  
  
  // MARK: - Create objects
  
  func createObjects() {
    // Create object
    Books = [BookStore]()
    
    book0 = BookStore(name: "Programming iOS 14", author: "Matt Neuburg", price: 14.04, numberOfBooks: 5,releaseDate: ReleaseDate(day: 1, month: 12, year: 2020))
    Books.append(book0)
    
    
    book1 = Book(name: "Head First Swift", author: "Jon Manning and Paris Buttfield-Addison", price: 67.89, numberOfBooks: 2, releaseDate: ReleaseDate(day: 18, month: 11, year: 2021))
    Books.append(book1)
    
    
    book2 = BookTow(name: "Layout Essentials Revised and Updated", author: "Beth Tondreau", price: 0.0, numberOfBooks: 9, releaseDate: ReleaseDate(day: 1, month: 2, year: 2019))
    Books.append(book2)
    
    
  }
  
}


// MARK: - Extension for Collection view data source

extension ViewController:UICollectionViewDataSource {
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return Books.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! BooksCell
    
    cell.bookName.text = Books[indexPath.row].name
    cell.authorName.text = Books[indexPath.row].author
    cell.priceUSD.text = "\(Books[indexPath.row].priceOnUSD)"
    cell.priceSAR.text = "\(Books[indexPath.row].priceOnSAR)"
    cell.numberOfBooks.text = "\(Books[indexPath.row].numberOfBooks)"
    
    return cell
  }
  
  
}

