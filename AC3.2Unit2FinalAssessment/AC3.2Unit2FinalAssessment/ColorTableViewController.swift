//
//  ColorTableViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Cris on 10/6/16.
//  Copyright © 2016 Cris. All rights reserved.
//

import UIKit

class ColorTableViewController: UITableViewController {
    
    var crayons = [Crayon]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Color Scheme"
        for c in crayolaColors {
            if let crayon = Crayon(fromDict: c) {
                crayons.append(crayon)
            }
        }
        
    }
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return crayons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorID", for: indexPath) as! CrayonTableViewCell
        
        // Configure the cell...
        let crayon1 = self.crayons[indexPath.row]
        cell.setData(color: crayon1)
        
        return cell
    }
    
    //    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    //                let selectedColor = self.crayons[indexPath.row]
    //                performSegue(withIdentifier: "colorSegueID", sender: selectedColor)
    //            }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "colorSegueID" {
            // perform segue on Detail View Controller
            let detailController = segue.destination as! CrayonViewController
            let selectedColor = sender as? Crayon
            detailController.color = selectedColor
            //                    detailController.setUpData()
        }
    }
    
}
