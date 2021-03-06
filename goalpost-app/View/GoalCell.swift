//
//  GoalCell.swift
//  goalpost-app
//
//  Created by Desarrollo on 1/30/19.
//  Copyright © 2019 Dev Core. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    @IBOutlet weak var goalTypeLbl: UILabel!
    @IBOutlet weak var goalDescriptionLbl: UILabel!
    @IBOutlet weak var goalProgressLbl: UILabel!
    @IBOutlet weak var completeGoalView: UIView!
    
    func configureCell(goal: Goal) {
        self.goalDescriptionLbl.text = goal.goalDescription
        self.goalTypeLbl.text = goal.goalType
        self.goalProgressLbl.text = String(describing: goal.goalProgress)
        
        if goal.goalProgress == goal.goalCompletionValue {
            self.completeGoalView.isHidden = false
        } else {
            self.completeGoalView.isHidden = true
            
        }
    }
}
