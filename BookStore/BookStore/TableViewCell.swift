//
//  TableViewCell.swift
//  BookStore
//
//  Created by Anas Hamad on 07/06/1443 AH.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var detail: UILabel!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var numberLabel: UILabel!
    @IBOutlet var viewUi: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
