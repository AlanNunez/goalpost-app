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
    
    func configureCell(description: String, type: GoalType, goalProgressAmount: Int) {
        self.goalDescriptionLbl.text = description
        self.goalTypeLbl.text = type.rawValue
        self.goalProgressLbl.text = String(describing: goalProgressAmount)
    }
}
