//
//  TableViewCell.swift
//  BookStore
//
//  Created by A A on 10/01/2022.
//

import UIKit

class TableViewCell: UITableViewCell {
  
  @IBOutlet weak var bookName: UILabel!
  @IBOutlet weak var authorName: UILabel!
  @IBOutlet weak var price: UILabel!
  @IBOutlet weak var bookImage: UIImageView!
  

  override func awakeFromNib() {
        super.awakeFromNib()
    // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
