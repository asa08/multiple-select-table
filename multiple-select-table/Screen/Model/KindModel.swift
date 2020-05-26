//
//  TableViewModel.swift
//  multiple-select-table
//
//  Created by maiko morisaki on 2020/05/26.
//  Copyright © 2020 nyapple. All rights reserved.
//

struct KindModel {
    let name: String
    var isSelected: Bool = false
    
    init(name: String) {
        self.name = name
    }
}
