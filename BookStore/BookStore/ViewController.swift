//
//  ViewController.swift
//  BookStore
//
//  Created by Maram Al shahrani on 07/06/1443 AH.
//

import Foundation
import UIKit


class ViewController: UIViewController {
    var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollectionView()
        self.title = "Books"
        self.navigationItem.largeTitleDisplayMode = .always
        view.backgroundColor = .systemGray6
    }
    private func configureCollectionView(){
        collectionView                      = UICollectionView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height), collectionViewLayout: Layout())
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        collectionView.backgroundColor  = UIColor(named: "backgroundColor")
        collectionView.delegate = self
        collectionView.dataSource  = self
        collectionView.showsVerticalScrollIndicator = false
        collectionView.register(Cell.self, forCellWithReuseIdentifier: Cell.ID)
        view.addSubview(collectionView)
    }
    private func Layout() -> UICollectionViewCompositionalLayout{
        
        let item = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
        
        item.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 19, bottom: 10, trailing: 19)
        
        let group = NSCollectionLayoutGroup.vertical(layoutSize: NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1),
            heightDimension: .estimated(300)),
                                                     subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        section.contentInsets.top = 25
        return UICollectionViewCompositionalLayout(section: section)
    }
}

extension ViewController: UICollectionViewDelegate , UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return contacts.count
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell            = collectionView.dequeueReusableCell(withReuseIdentifier: Cell.ID, for: indexPath) as! Cell
        
        cell.setCell(card: contacts[indexPath.row])
        
        return cell
        
    }
}

