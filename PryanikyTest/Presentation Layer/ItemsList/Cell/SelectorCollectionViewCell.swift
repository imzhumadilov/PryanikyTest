//
//  SelectorCollectionViewCell.swift
//  PryanikyTest
//
//  Created by Ilyas Zhumadilov on 29.09.2020.
//

import UIKit

class SelectorCollectionViewCell: UICollectionViewCell {

    // MARK: - Outlets
    @IBOutlet private weak var titleLabel: UILabel!
    
    // MARK: - Props
    static let id = String(describing: SelectorCollectionViewCell.self)
    
    // MARK: - Setup functions
    public func setup(title: String) {
        titleLabel.text = title
    }
}
