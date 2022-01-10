//
//  ViewController.swift
//  OOP
//
//  Created by Majed Alshammari on 07/06/1443 AH.
//

import UIKit



class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    @IBOutlet weak var tableView: UITableView!
    
    var books = [BookStore]()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        books.append(firstBook)
        books.append(secondBook)
        books.append(thirdBook)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? BookStoreCell else {return UITableViewCell()}
        cell.bookName.text = books[indexPath.row].bookName
        cell.authorName.text = books[indexPath.row].authorName
        cell.price.text = "\(String(describing: books[indexPath.row].updatedPrice))"
        cell.numberOfBooks.text = "\(String(describing: books[indexPath.row].numberOfBooks))"
        return cell
    }
}

