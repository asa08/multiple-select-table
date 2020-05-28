//
//  ViewController.swift
//  multiple-select-table
//
//  Created by maiko morisaki on 2020/05/24.
//  Copyright © 2020 nyapple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: MultipleTableView!
    
    var viewModel: MultipleTableViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigation()
        viewModel = MultipleTableViewModel()
        tableView.kinds = viewModel?.Kinds ?? []
    }
    
    private func setNavigation() {
        title = "ねこのしゅるい"
    }
}

