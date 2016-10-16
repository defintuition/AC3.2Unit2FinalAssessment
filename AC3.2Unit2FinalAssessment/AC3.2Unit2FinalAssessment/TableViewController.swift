//
//  TableViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Eric Chang on 10/6/16.
//  Copyright © 2016 Eric Chang. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
  
  var crayons = [Crayon]()
  
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
    return crayons.count
  }
  
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
    
    if let colorCell: TableViewCell = cell as? TableViewCell {
      let myCray = crayons[indexPath.row]
      cell.backgroundColor = UIColor(red: CGFloat(myCray.red), green: CGFloat(myCray.green), blue: CGFloat(myCray.blue), alpha: 1.0)
      
      colorCell.colorLabel.text = myCray.name
    }
    
    return cell
  }
  

  // MARK: - Navigation
  
  // In a storyboard-based application, you will often want to do a little preparation before navigation
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let tappedColorCell: TableViewCell = sender as? TableViewCell {
      if segue.identifier == "colorPickerSegue" {
        
        let colorView = segue.destination as! FirstViewController
        let cellIndexPath: IndexPath = self.tableView.indexPath(for: tappedColorCell)!
        let myCray = crayons[cellIndexPath.row]
        
        colorView.crayon = myCray
      }
    }
    
  }
  
  
}















