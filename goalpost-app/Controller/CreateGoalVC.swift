//
//  CreateGoalVC.swift
//  goalpost-app
//
//  Created by Desarrollo on 1/31/19.
//  Copyright © 2019 Dev Core. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermGoal: UIButton!
    @IBOutlet weak var longTermGoal: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    var goalType: GoalType = .shortTerm
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextBtn.bindToKeyboard()
        shortTermGoal.setSelectedColor()
        longTermGoal.setDeselectedColor()
        goalTextView.delegate = self
    }
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
    @IBAction func shortTermWasPressed(_ sender: Any) {
        goalType = .shortTerm
        shortTermGoal.setSelectedColor()
        longTermGoal.setDeselectedColor()
    }
    @IBAction func longTermBtnWasPressed(_ sender: Any) {
        goalType = .longTerm
        longTermGoal.setSelectedColor()
        shortTermGoal.setDeselectedColor()
    }
    @IBAction func nextBtnWasPressed(_ sender: Any) {
        if goalTextView.text != nil && goalTextView.text != "What is your goal?" {
            guard let finishGoalVC = storyboard?.instantiateViewController(withIdentifier: "FinishGoalVC") as? FinishGoalVC else { return }
            finishGoalVC.initData(description: goalTextView.text!, type: goalType)
            presentDetail(finishGoalVC)
        }
    }
    func textViewDidBeginEditing(_ textView: UITextView) {
        goalTextView.text = ""
        goalTextView.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
}
