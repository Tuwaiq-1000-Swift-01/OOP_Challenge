//
//  NewBook.swift
//  2-OOP_Challenge
//
//  Created by Abdullah Bajaman on 11/01/2022.
//

import UIKit

class NewBook: UIViewController {
    var newBook: Book?
    
    @IBOutlet weak var titleLbl: UITextField!
    @IBOutlet weak var authorLbl: UITextField!
    @IBOutlet weak var priceLbl: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onClickSubmit(_ sender: UIButton) {
        let price = Double(priceLbl.text!)
        self.newBook = Book(title: titleLbl.text!, author: Author(name: authorLbl.text!), price: price!)
        print("--------------------------onClick--------------")
        print(newBook!.title)
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
//        if segue.identifier == "HomeID"{
            if let vc = segue.destination as? ViewController{
                
                vc.newBook = self.newBook!
            }
//        }
    }
    

}
