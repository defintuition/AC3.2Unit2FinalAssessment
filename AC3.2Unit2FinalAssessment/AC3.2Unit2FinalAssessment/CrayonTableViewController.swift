//
//  CrayonTableViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Margaret Ikeda on 10/12/16.
//  Copyright © 2016 Margaret Ikeda. All rights reserved.
//

import UIKit

class CrayonTableViewController: UITableViewController {

    var crayons = [Crayon]()
    var selectedColor: Crayon?

    override func viewDidLoad() {
        super.viewDidLoad()
        crayons = crayolaColors.flatMap { Crayon(fromDict: $0) }

        // crayolaColors is a global variable defined in CrayonData.swift
        // so it should be visible from any point in your code
        //        for c in crayolaColors {
        //            if let crayon = Crayon(fromDict: c) {
        //                crayons.append(crayon)
        //            }
        //        }
        //
        //        crayons = crayolaColors.flatMap { crayonData in return Crayon(fromDict: crayonData) }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crayons.count
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedColor = crayons[indexPath.row]
        performSegue(withIdentifier: "showColor", sender: selectedColor)
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorIdentifier", for: indexPath)
        let crayonAtIndexPath = crayons[indexPath.row]
        // set the cells' textlabel.text = to the crayon's name(use that indexPath.row...)
        cell.textLabel?.text = crayonAtIndexPath.name
        //set the cell's background color equal to a UIColor with the red, gree, and blue properties of the crayon
        cell.backgroundColor = UIColor(displayP3Red: CGFloat(crayonAtIndexPath.red),
                                       green: CGFloat(crayonAtIndexPath.green),
                                       blue: CGFloat(crayonAtIndexPath.blue),
                                       alpha: 1)
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showColor",
            let destination = segue.destination as? CrayonColorViewController,
            let crayon = sender as? Crayon {
            destination.detailCrayon = crayon
        }
    }
}
