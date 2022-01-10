//
//  ViewController.swift
//  BookStore
//
//  Created by Osama folta on 07/06/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titl: UITextField!
    @IBOutlet weak var price: UITextField!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var booksNum: UILabel!
    var test = BookStore()
    @IBAction func add(_ sender: Any) {
        guard let pric = Double(price.text!) else{ return}
        let test0 = Book.init(name: titl.text!, author: name.text!, price:pric)
        booksNum.text =  String(test.getNumberOfBooks())
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
       
      
        
       

       // test.bookDetails(book: test0)
        
        
        
        // Do any additional setup after loading the view.
    }


}


