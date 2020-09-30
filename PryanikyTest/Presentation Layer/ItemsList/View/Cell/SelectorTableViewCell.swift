//
//  SelectorTableViewCell.swift
//  PryanikyTest
//
//  Created by Ilyas Zhumadilov on 29.09.2020.
//

import UIKit

protocol SelectorTableViewCellDelegate: class {
    func pushInformationViewController(type: ViewType, selectorContent: SelectorContent)
}

class SelectorTableViewCell: UITableViewCell {

    // MARK: - Outlets
    @IBOutlet private weak var collectionView: UICollectionView!
    
    // MARK: - Props
    static let id = String(describing: SelectorTableViewCell.self)
    weak var delegate: SelectorTableViewCellDelegate?
    private var selectorContent: [SelectorContent] = []
    
    // MARK: - Setup functions
    public func setup(content: [SelectorContent]) {
        setupComponents()
        
        self.selectorContent = content
        
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
        
        return selectorContent.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView
                .dequeueReusableCell(withReuseIdentifier: SelectorCollectionViewCell.id,
                                     for: indexPath) as? SelectorCollectionViewCell else { return UICollectionViewCell() }
        
        let id = selectorContent[indexPath.row].id
        cell.setup(id: String(id))
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        delegate?.pushInformationViewController(type: .selector, selectorContent: selectorContent[indexPath.row])
    }
}
