//
//  CollectionViewCell.swift
//  OOP_Challenge_Bonus
//
//  Created by Marzouq Almukhlif on 07/06/1443 AH.
//

import UIKit

class BooksCell: UICollectionViewCell {
  
  // MARK: - Outlets
  
  @IBOutlet var bookName: UILabel!
  @IBOutlet var authorName: UILabel!
  @IBOutlet var priceUSD: UILabel!
  @IBOutlet var priceSAR: UILabel!
  @IBOutlet var numberOfBooks: UILabel!
  
}
