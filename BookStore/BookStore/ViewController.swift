//
//  ViewController.swift
//  BookStore
//
//  Created by Anas Hamad on 07/06/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    var book1 = BookStore(bookName: "Deep Work", autherName: " Cal Newport", price: 84, bookNumber: "1")


    var book2 = Shelfs(bookName: "Everybody Lies", autherName: "Seth Stephens-Davidowitz", price: 70, bookNumber: "2")

    var book3 = avalibelity(bookName: "The Snowball", autherName: " Alice Schroeder", price: 121, bookNumber: "3")
    
    var arr = [BookStore]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        arr.append(book1)
        arr.append(book3)
        arr.append(book2)
        // Do any additional setup after loading the view.
    }


}
extension ViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
        
        cell?.titleLabel.text = arr[indexPath.row].bookName
        cell?.numberLabel.text = arr[indexPath.row].bookNumber
        cell?.detail.text = arr[indexPath.row].autherName
        cell?.priceLabel.text = "\(arr[indexPath.row].discountPrice) $"
        cell?.viewUi.layer.shadowColor = UIColor.gray.cgColor
        cell?.viewUi.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        cell?.viewUi.layer.shadowOpacity = 2.0
        cell?.viewUi.layer.masksToBounds = false
        cell?.viewUi.layer.cornerRadius = 12.0
       
        
 
        
        
        return cell  ?? UITableViewCell()
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}

