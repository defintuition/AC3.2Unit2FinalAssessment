//
//  CrayonTableViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Marcel Chaucer on 10/6/16.
//  Copyright © 2016 Marcel Chaucer. All rights reserved.
//

import UIKit

class CrayonTableViewController: UITableViewController {
var crayons = [Crayon]()
//var selectedColor: Crayon?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for c in crayolaColors {
            if let crayon = Crayon(fromDict: c) {
                crayons.append(crayon)
            }
            
        }
    }


    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return crayons.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Colors", for: indexPath)
        
        let crayonCell = crayons[indexPath.row]
        cell.textLabel?.text = crayonCell.name
        cell.backgroundColor = UIColor(colorLiteralRed: Float(crayonCell.red), green: Float(crayonCell.green), blue: Float(crayonCell.blue), alpha: 1.0)
        if cell.textLabel?.text == "Black" {
            cell.textLabel?.textColor = UIColor.white
        }

        return cell
    }
    

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedColor = self.crayons[indexPath.row]
        performSegue(withIdentifier: "showColor", sender: selectedColor)
    }
    
        
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showColor" {
            if let destination = segue.destination as? CrayonViewController {
                destination.detailCrayon =  sender as? Crayon
            }
        }
    }
}



