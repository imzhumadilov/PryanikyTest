//
//  SelectorTableViewCell.swift
//  PryanikyTest
//
//  Created by Ilyas Zhumadilov on 29.09.2020.
//

import UIKit

class SelectorTableViewCell: UITableViewCell {

    // MARK: - Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK: - Props
    static let id = String(describing: SelectorTableViewCell.self)
    private var variants: [Varinats] = [] {
        didSet {
            collectionView.reloadData()
        }
    }
    
    // MARK: - Setup functions
    public func setup(variants: [Varinats]) {
        setupComponents()
        self.variants = variants
    }
    
    // MARK: - Module functions
    private func setupComponents() {
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(UINib(nibName: SelectorCollectionViewCell.id, bundle: nil),
                                forCellWithReuseIdentifier: SelectorCollectionViewCell.id)
    }
}

// MARK: - CollectionView
extension SelectorTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        variants.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView
                .dequeueReusableCell(withReuseIdentifier: SelectorCollectionViewCell.id,
                                     for: indexPath) as? SelectorCollectionViewCell else { return UICollectionViewCell() }
        
        cell.setup(title: variants[indexPath.row].text)
        return cell
    }
}
