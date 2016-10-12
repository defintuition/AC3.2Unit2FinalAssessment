//
//  ColorTableViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Ana Ma on 10/6/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class ColorTableViewController: UITableViewController {
    var crayonObjects = [Crayon?]()
    let cellIdentifier: String = "crayonColorCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Crayon Colors"
        
        for rawCrayon in crayolaColors {
            let crayon = Crayon(fromDict: rawCrayon)
            crayonObjects.append(crayon)
            print("\n\n\n\n\n\n\n\n\n\n\n\n\n \( crayonObjects.count)")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.crayonObjects.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ColorTableViewCell
        
        let crayon = self.crayonObjects[indexPath.row]
        
        cell.textLabel?.text = crayon?.name
        cell.backgroundColor = UIColor(red: CGFloat(crayon!.red), green: CGFloat(crayon!.green), blue: CGFloat(crayon!.blue), alpha: 1.0)

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        //1. check sender for the cell that was tapped
        if let tappedColorCell: ColorTableViewCell = sender as? ColorTableViewCell{
            
            //2. check for the right storyboard segue
            if segue.identifier == "showColorSegue" {
                
                //3. get reference to the destination view controller, use it for special setting/ casting
                let DetailColorViewController: DetailColorViewController = segue.destination as! DetailColorViewController
                
                //4. get our cell's indexPath
                let cellIndexPath = self.tableView.indexPath(for: tappedColorCell)!
                
                //5. set the destination's selectedMovie property
                
                let selectedColor: Crayon! = crayonObjects[cellIndexPath.row]
                DetailColorViewController.selectedColor = selectedColor
            }
        }
    }
    
    
    /*
    //perform the segue when selected row at
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedCrayon = self.crayonObjects[indexPath.row]
        performSegue(withIdentifier: "showColorSegue", sender: selectedCrayon)
    }
    
    //trigger where ever you connected to a segue
    //when ever you call segue with identifier
    //part of the performSegue(withIdentifier function)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showColorSegue" {
            //perform segue on Detail View Controller
            let detailController = segue.destination as! DetailColorViewController //cast it to access to name label
            let selectedCrayon = sender as? Crayon
            detailController.crayonColor = selectedCrayon
        }
    }
 */


}
