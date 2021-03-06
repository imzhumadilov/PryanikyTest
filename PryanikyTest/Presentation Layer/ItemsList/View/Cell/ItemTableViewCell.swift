//
//  ItemTableViewCell.swift
//  PryanikyTest
//
//  Created by Ilyas Zhumadilov on 29.09.2020.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

    // MARK: - Outlets
    @IBOutlet private weak var titleLabel: UILabel!
    
    // MARK: - Props
    static let id = String(describing: ItemTableViewCell.self)
    
    // MARK: - Lifecycle
    override func prepareForReuse() {
        super.prepareForReuse()

        titleLabel.text = ""
    }
    
    // MARK: - Setup functions
    public func setup(title: String) {
        titleLabel.text = title
    }
}
