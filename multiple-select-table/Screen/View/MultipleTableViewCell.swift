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
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        initLabel()
    }
    
    private func initLabel() {
        label.font = .systemFont(ofSize: 15)
        label.textColor = .darkGray
    }
}
