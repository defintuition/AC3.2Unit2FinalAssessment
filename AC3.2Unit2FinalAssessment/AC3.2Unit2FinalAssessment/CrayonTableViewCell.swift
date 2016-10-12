//
//  CrayonTableViewCell.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Cris on 10/6/16.
//  Copyright © 2016 Cris. All rights reserved.
//

import UIKit

class CrayonTableViewCell: UITableViewCell {
    
    @IBOutlet weak var colorLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //        backgroundColor = .red
        // Initialization code
    }
    
    func setData(color: Crayon) {
        let name = color.name
        let red = color.red
        let green = color.green
        let blue = color.blue
        
        self.colorLabel.text = name
        self.backgroundColor = UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1.0)
        
        if self.backgroundColor == UIColor(red: CGFloat(0), green: CGFloat(0), blue: CGFloat(0), alpha: 1.0) {
            colorLabel.textColor = .white
        }
        
    }
    
    
}
