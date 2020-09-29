//
//  ItemsListViewController.swift
//  PryanikyTest
//
//  Created by Ilyas Zhumadilov on 29.09.2020.
//

import UIKit

class ItemsListViewController: UIViewController, ItemsListViewInput {
    
    // MARK: - Outlets
    @IBOutlet private weak var tableView: UITableView!
    
    // MARK: - Props
    var output: ItemsListViewOutput?
    var items: Items? {
        didSet {
            tableView.reloadData()
        }
    }
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupComponents()
        setupActions()
        output?.fetchData()
    }
    
    override func viewDidLayoutSubviews() {
        self.applyStyles()
    }
    
    // MARK: - ItemsListViewInput
    func getData(items: Items) {
        self.items = items
    }
}

// MARK: - Setup functions
extension ItemsListViewController {
    
    func setupComponents() {
        navigationItem.title = "Items"
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: ItemTableViewCell.id, bundle: nil),
                           forCellReuseIdentifier: ItemTableViewCell.id)
        tableView.register(UINib(nibName: SelectorTableViewCell.id, bundle: nil),
                                   forCellReuseIdentifier: SelectorTableViewCell.id)
        
        let refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action: #selector(updateNews), for: .valueChanged)
        tableView.refreshControl = refreshControl
    }
    
    func setupActions() { }
    
    func applyStyles() { }
    
}

// MARK: - Actions
extension ItemsListViewController {
    
    @objc
    private func updateNews(sender: UIRefreshControl) {
        output?.fetchData()
        sender.endRefreshing()
    }
}

// MARK: - Module functions
extension ItemsListViewController { }

// MARK: - UITableViewDelegate, UITableViewDataSource
extension ItemsListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        guard let items = items else { return 0 }
        return items.view.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let items = items else { return UITableViewCell() }
        
        if items.view[indexPath.row] == ViewList.selector.rawValue {
            
            guard let cell = tableView
                    .dequeueReusableCell(withIdentifier: SelectorTableViewCell.id,
                                         for: indexPath) as? SelectorTableViewCell else { return UITableViewCell() }
            
            cell.delegate = self
            cell.setup(name: ViewList.selector.rawValue, variants: items.data[2].data.variants)
            return cell
        }
        
        guard let cell = tableView
                .dequeueReusableCell(withIdentifier: ItemTableViewCell.id,
                                     for: indexPath) as? ItemTableViewCell else { return UITableViewCell() }
        
        let title = items.view[indexPath.row]
        cell.setup(title: title)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        guard let viewTitle = items?.view[indexPath.row],
              viewTitle != ViewList.selector.rawValue,
              let data = items?.data.filter({ $0.name == viewTitle }).first?.data else { return }
        
        output?.pushInformationViewController(name: viewTitle, data: data)
    }
}

// MARK: - SelectorTableViewCellDelegate
extension ItemsListViewController: SelectorTableViewCellDelegate {
    
    func pushInformationViewController(name: String, variant: Varinats) {
        output?.pushInformationViewController(name: name, variant: variant)
    }
}
