//
//  Books.swift
//  BookStore
//
//  Created by Jawaher🌻 on 07/06/1443 AH.
//

import Foundation

import UIKit
 
class Books: UIViewController {
    private let selectedIndex = -1
    
    
    
    lazy var booksTV: UITableView = {
        let t = UITableView()
        t.translatesAutoresizingMaskIntoConstraints = false
        t.delegate = self
        t.dataSource = self
        t.register(BooksCell.self, forCellReuseIdentifier: BooksCell.identifire)
        return t
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
 
        
        title = "قائمة الكتب"
        view.addSubview(booksTV)
        NSLayoutConstraint.activate([
            booksTV.topAnchor.constraint(equalTo: view.topAnchor),
            booksTV.leftAnchor.constraint(equalTo: view.leftAnchor),
            booksTV.rightAnchor.constraint(equalTo: view.rightAnchor),
            booksTV.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
    
}

extension Books: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allBooks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: BooksCell.identifire, for: indexPath) as! BooksCell
        
    
        let books = allBooks[indexPath.row]
        
        cell.nameLabel.text = " اسم الكتاب: \(books.name)"
        cell.authorLabel.text = " اسم المؤلف: \(books.Author)"
        cell.priceLabel.text = "  السعر:\(books.Price)"
        cell.pagesLabel.text = " عدد الصفحات: \(books.NumberOfPages)"
        cell.Image.image = UIImage(named: books.image)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == selectedIndex {
            return 354
        }else {
            return 160
        }
    }
}

class BooksCell: UITableViewCell {
    
    static let identifire = "Cell"
    
    public let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Avenir-Light", size: 21)
        label.textAlignment = .right
        return label
    }()
    
     let authorLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .right
        label.font = UIFont(name: "Avenir-Light", size: 18)
        return label
    }()
     let priceLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .right
        label.font = UIFont(name: "Avenir-Light", size: 18)
        return label
    }()
    
     let pagesLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .right
        label.font = UIFont(name: "Avenir-Light", size: 18)
        return label
    }()
    
    let Image: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 20
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = #colorLiteral(red: 0.8396557605, green: 0.8738491381, blue: 0.9568046801, alpha: 1)
        
        contentView.addSubview(nameLabel)
        contentView.addSubview(authorLabel)
        contentView.addSubview(priceLabel)
        contentView.addSubview(pagesLabel)
        contentView.addSubview(Image)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()

        nameLabel.frame = CGRect(x: -20,
                              y: -30,
                              width: 300,
                              height: contentView.frame.size.height-30)
        authorLabel.frame = CGRect(x: -19,
                              y: 5,
                              width: 300,
                              height: contentView.frame.size.height-30)
        priceLabel.frame = CGRect(x: -19,
                              y: 35,
                              width: 300,
                              height: contentView.frame.size.height-30)
        pagesLabel.frame = CGRect(x: -19,
                              y: 68,
                              width: 300,
                              height: contentView.frame.size.height-30)
        Image.frame = CGRect(x: 290,
                             y: 16,
                             width: 110,
                             height:130)
        
    }
    
}
