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
    var selectedIndex: [Int] = []
    
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
        rowHeight = 45
        delegate = self
        dataSource = self
        isMultipleTouchEnabled = true
    }
}

extension MultipleTableView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        kinds.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.multipleTableViewCell.identifier, for: indexPath) as! MultipleTableViewCell
        cell.selectionStyle = .none
        cell.kind = kinds[indexPath.row]
        return cell
    }
}

extension MultipleTableView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let row = selectedIndex.filter({ $0 == indexPath.row }).first {
            guard let removeIndex = selectedIndex.firstIndex(of: row) else { return }
            selectedIndex.remove(at: removeIndex)
            kinds[indexPath.row].isSelected.toggle()
            return
        }
        if selectedIndex.count > 2 { return }
        kinds[indexPath.row].isSelected.toggle()
        selectedIndex.append(indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
    }
}
