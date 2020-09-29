//
//  InformationViewController.swift
//  PryanikyTest
//
//  Created by Ilyas Zhumadilov on 29.09.2020.
//

import UIKit

class InformationViewController: UIViewController, InformationViewInput {

    // MARK: - Outlets
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var textLabel: UILabel!
    @IBOutlet private weak var idLabel: UILabel!
    @IBOutlet private weak var selectorImageView: UIImageView!
    
    // MARK: - Props
    var output: InformationViewOutput?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        output?.getData()
    }
    
    // MARK: - InformationViewInput
    func setup(type: ViewList, data: DataIn) {
        setupView(type: type)
        
        nameLabel.text = type.rawValue
        textLabel.text = data.text
        
        if type == .picture {
            setupImage(url: data.imageUrl)
        }
    }
    
    func setup(type: ViewList, variant: Varinats) {
        setupView(type: type)
        
        nameLabel.text = type.rawValue
        textLabel.text = variant.text
        idLabel.text = String(variant.id)
    }
}

// MARK: - Setup functions
extension InformationViewController {
    
    private func setupView(type: ViewList) {
        
        switch type {
        
        case .hz:
            idLabel.isHidden = true
            selectorImageView.isHidden = true
            
        case .picture:
            idLabel.isHidden = true
        
        case .selector:
            selectorImageView.isHidden = true
            
        case .none:
            nameLabel.isHidden = true
            textLabel.isHidden = true
            idLabel.isHidden = true
            selectorImageView.isHidden = true
        }
    }
    
    private func setupImage(url: String) {
        
        guard let url = URL(string: url) else { return }
        
        URLSession.shared.dataTask(with: url) { [weak self] (data, response, error) in
            
            guard let data = data, let image = UIImage(data: data) else { return }
            
            DispatchQueue.main.async {
                self?.selectorImageView.image = image
            }
        }.resume()
    }
}

