//
//  SelectorTableViewCell.swift
//  PryanikyTest
//
//  Created by Ilyas Zhumadilov on 29.09.2020.
//

import UIKit

protocol SelectorTableViewCellDelegate: class {
    func pushInformationViewController(name: String, variant: Varinats)
}

class SelectorTableViewCell: UITableViewCell {

    // MARK: - Outlets
    @IBOutlet private weak var collectionView: UICollectionView!
    
    // MARK: - Props
    static let id = String(describing: SelectorTableViewCell.self)
    weak var delegate: SelectorTableViewCellDelegate?
    private var name = ""
    private var variants: [Varinats] = []
    
    // MARK: - Setup functions
    public func setup(name: String, variants: [Varinats]) {
        setupComponents()
        
        self.name = name
        self.variants = variants
        collectionView.reloadData()
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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        delegate?.pushInformationViewController(name: name, variant: variants[indexPath.row])
    }
}
