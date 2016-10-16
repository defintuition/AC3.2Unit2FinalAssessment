//
//  FirstViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Eric Chang on 10/6/16.
//  Copyright © 2016 Eric Chang. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
  
  @IBOutlet weak var colorTitle: UILabel!
  var crayon: Crayon?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    loadData()
    
  }
  func loadData() {
    colorTitle.text = crayon?.name
    self.view.backgroundColor = UIColor(red: CGFloat((crayon?.red)!), green: CGFloat((crayon?.green)!), blue: CGFloat((crayon?.blue)!), alpha: 1.0)
  }
  
  
}

