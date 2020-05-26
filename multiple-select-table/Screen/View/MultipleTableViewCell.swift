//
//  multipleTableViewCell.swift
//  multiple-select-table
//
//  Created by maiko morisaki on 2020/05/24.
//  Copyright © 2020 nyapple. All rights reserved.
//

import UIKit

class MultipleTableViewCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    
    var kind: KindModel? {
        didSet {
            accessoryType = kind?.isSelected ?? false ? .checkmark : .none
            initLabel()
        }
    }
    
    private func initLabel() {
        label.font = .systemFont(ofSize: 15)
        label.textColor = .darkGray
        label.text = kind?.name
    }
}
