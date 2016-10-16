//
//  CrayonViewController.swift
//  AssessmentReviewiWithJovanny
//
//  Created by Margaret Ikeda on 10/12/16.
//  Copyright © 2016 Margaret Ikeda. All rights reserved.
//

import UIKit

class CrayonColorViewController: UIViewController {

    @IBOutlet weak var colorLabel: UILabel!

    var detailCrayon: Crayon? {
        didSet {
            guard let detailCrayon = detailCrayon else { return }
            self.navigationItem.title = detailCrayon.name
            view.backgroundColor = UIColor(displayP3Red: CGFloat(detailCrayon.red),
                                           green: CGFloat(detailCrayon.green),
                                           blue: CGFloat(detailCrayon.blue),
                                           alpha: 1)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        if let color = detailCrayon {
            colorLabel.text = "Red: \(color.red) \nGreen: \(color.green) \nBlue: \(color.blue)"

            //            if detailCrayon.name = "Black" {
            //                let cell.textLabel.textColor = UIColor.white {

        }
    }
}
