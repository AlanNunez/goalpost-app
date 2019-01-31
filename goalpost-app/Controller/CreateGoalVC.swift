//
//  CreateGoalVC.swift
//  goalpost-app
//
//  Created by Desarrollo on 1/31/19.
//  Copyright © 2019 Dev Core. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController {
    
    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermGoal: UIButton!
    @IBOutlet weak var longTermGoal: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
    @IBAction func shortTermWasPressed(_ sender: Any) {
    }
    @IBAction func longTermBtnWasPressed(_ sender: Any) {
    }
    @IBAction func nextBtnWasPressed(_ sender: Any) {
    }
}
