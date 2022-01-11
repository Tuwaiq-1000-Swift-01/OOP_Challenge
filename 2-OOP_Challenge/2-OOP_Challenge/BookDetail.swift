//
//  BookDetail.swift
//  2-OOP_Challenge
//
//  Created by Abdullah Bajaman on 11/01/2022.
//

import UIKit

class BookDetail: UIViewController {

    var bookTitle : String = ""
    var author : String = ""
    var price : Double = 0
    
    @IBOutlet weak var titleLbl : UILabel!
    @IBOutlet weak var authorLbl : UILabel!
    @IBOutlet weak var priceLbl : UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        titleLbl.text = bookTitle
        authorLbl.text = author
        priceLbl.text = String(price)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
