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
 Use Overriding✅ and Overloading✅
 Implement Access Control✅
 Add setters & getters✅
 Implement Encapsulation concept✅
 Implement Polymorphism concept✅
 */
class ViewController: UIViewController {

    var books : [Book] = []
    var newBook: Book!
    var bookNum = String(BookStore.numBooks)
    @IBOutlet weak var booksTV: UITableView!
    @IBOutlet weak var numberOfBooks: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        booksTV.delegate = self
        booksTV.dataSource = self
        
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
        numberOfBooks.text = String(BookStore.numBooks)
        let newBooks = [book1, book2, book3, book4]
        newBooks.map{ books.append($0)}
        booksTV.reloadData()
    }
    
    @IBAction func onClickAddNewBook (sender: UIButton){
        performSegue(withIdentifier: "toNewBook", sender: self)
    }
    @IBAction func unWindToProfile (sender: UIStoryboardSegue){
        print("------------------unWind----------------")
        print(newBook!)
        if let newBook = newBook{
            
            books.append(newBook)
            booksTV.reloadData()
            numberOfBooks.text = String(BookStore.numBooks)
        }
    }

    
}
extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "BookDetailID") as! BookDetail
        let book = books[indexPath.row]
        vc.bookTitle = book.title
        vc.author = book.author.name
        vc.price = book.getPrice()
        self.navigationController?.show(vc, sender: nil)
    }
}
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        books.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = booksTV.dequeueReusableCell(withIdentifier: "cellID", for: indexPath) as! BookCell
        cell.titleLbl.text = books[indexPath.row].title
        return cell
    }
    
    
}

class BookCell : UITableViewCell{
    @IBOutlet weak var titleLbl: UILabel!
}
// book store      -- book --      author
// @booksNumber     title           name
// name             price
// #setBookPrice
// #bookInfo        #bookInfo





