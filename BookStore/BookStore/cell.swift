//
//  cell.swift
//  BookStore
//
//  Created by Maram Al shahrani on 07/06/1443 AH.
//

import UIKit

class Cell: UICollectionViewCell {
    static let ID = "CellID"
    
    private let blogImage: UIImageView = {
        let image           = UIImageView()
        
        image.contentMode   = .scaleToFill
        image.clipsToBounds = true
        return image
    }()
    private let bookAuther: UILabel = {
        let caption = UILabel()
        caption.textColor   = .black
        caption.font        = UIFontMetrics.default.scaledFont(for: UIFont.systemFont(ofSize: 18, weight: .medium))
        
        return caption
    }()
    private let bookName: UILabel = {
        let title = UILabel()
        title.textColor     =  UIColor.label
        title.font          = UIFontMetrics.default.scaledFont(for: UIFont.systemFont(ofSize: 27, weight: .bold))
        return title
    }()
    private let bookPrice: UILabel = {
        let description  = UILabel()
        description.textColor  =  .black
        description.font            = UIFontMetrics.default.scaledFont(for: UIFont.systemFont(ofSize: 16, weight: .regular))
        description.numberOfLines   = 4
        description.textAlignment   = .left
        return description
    }()
    private let bookNumberOfBooks: UILabel = {
        let numberOfBooks             = UILabel()
        numberOfBooks.textColor       =  .black
        numberOfBooks.font            = UIFontMetrics.default.scaledFont(for: UIFont.systemFont(ofSize: 16, weight: .medium))
        return numberOfBooks
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCell()
    }
    
    required init?(coder: NSCoder){fatalError("init(coder:) has not been implemented")}
    // override
    override func layoutSubviews() {
        setupSizeForCellContent()
    }
    func setCell(card: Book){
        blogImage.image = UIImage(named: card.image)
        bookAuther.text = card.auther
        bookName.text  = card.name
        bookPrice.text = "\(card.price) SR"
        bookNumberOfBooks.text  = "\(card.numberOfBooks)"
    }
    private func setupSizeForCellContent() {
        blogImage.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height / 2.5)
        bookName.frame = CGRect(x: 14, y: self.frame.size.height / 2.4, width: self.frame.size.width - 14, height: 30)
        bookAuther.frame = CGRect(x: 14, y: self.frame.size.height / 1.80, width: self.frame.size.width - 14, height: 30)
        bookPrice.frame = CGRect(x: 14, y: self.frame.size.height / 1.74, width: self.frame.size.width - 24, height: 90)
        bookNumberOfBooks.frame = CGRect(x: 14, y: self.frame.size.height / 1.23, width: self.frame.size.width - 50, height: 50)
    }
    
    private func setupCell() {
        self.backgroundColor = .systemBackground
        self.addSubview(blogImage)
        self.addSubview(bookAuther)
        self.addSubview(bookName)
        self.addSubview(bookPrice)
        self.addSubview(bookNumberOfBooks)
        self.layer.cornerRadius = 13
        self.layer.masksToBounds = true
        
    }
}

