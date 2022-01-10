//
//  BookStoreCell.swift
//  OOP
//
//  Created by Majed Alshammari on 07/06/1443 AH.
//

import UIKit

class BookStoreCell: UITableViewCell {
    @IBOutlet weak var bookName: UILabel!
    @IBOutlet weak var authorName: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var numberOfBooks: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
