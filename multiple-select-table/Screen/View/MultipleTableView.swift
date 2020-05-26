//
//  multipleTableView.swift
//  multiple-select-table
//
//  Created by maiko morisaki on 2020/05/24.
//  Copyright © 2020 nyapple. All rights reserved.
//

import UIKit

class MultipleTableView: UITableView {
    
    var kinds: [KindModel] = [] { didSet { reloadData() } }
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        register(R.nib.multipleTableViewCell)
        delegate = self
        dataSource = self
    }
}

extension MultipleTableView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        kinds.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.multipleTableViewCell.identifier, for: indexPath) as! MultipleTableViewCell
        cell.kind = kinds[indexPath.row]
        return cell
    }
}

extension MultipleTableView: UITableViewDelegate {
    
}
