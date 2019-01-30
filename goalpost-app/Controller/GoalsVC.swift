//
//  GoalsVC.swift
//  goalpost-app
//
//  Created by Desarrollo on 1/30/19.
//  Copyright © 2019 Dev Core. All rights reserved.
//

import UIKit

class GoalsVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func addGoalBtnWasPressed(_ sender: Any) {
        print("Btn was presed")
    }
}

