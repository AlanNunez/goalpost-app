//
//  FinishGoalVC.swift
//  goalpost-app
//
//  Created by Desarrollo on 1/31/19.
//  Copyright © 2019 Dev Core. All rights reserved.
//

import UIKit
import CoreData

class FinishGoalVC: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var createGoalBtn: UIButton!
    @IBOutlet weak var pointsTextField: UITextField!
    var goalDescription: String!
    var goalType: GoalType!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalBtn.bindToKeyboard()
        pointsTextField.delegate = self
    }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
    func initData(description: String, type: GoalType) {
        
    }
    
    @IBAction func createGoalBtnWasPressed(_ sender: Any) {
        if pointsTextField != nil {
            self.save { (complete) in
                if complete {
                    dismiss(animated: true, completion: nil)
                }
            }
        }
    }
    func save(completion: (_ finished: Bool) -> () ) {
        guard let manageContext = appDelegate?.persistentContainer.viewContext else { return }
        let goal = Goal(context:  manageContext)
        goal.goalDescription = goalDescription
        goal.goalType = goalType.rawValue
        goal.goalCompletionValue = Int32(pointsTextField.text!)!
        goal.goalProgress  = Int32(0)
        do {
            try manageContext.save()
            completion(true)
        } catch {
            debugPrint("Could not save: \(error.localizedDescription)")
            completion(false)
        }
    }
}
