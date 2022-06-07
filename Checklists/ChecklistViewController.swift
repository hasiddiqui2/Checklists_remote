//
//  ViewController.swift
//  Checklists
//
//  Created by Hammad Siddiqui on 6/7/22.
//

import UIKit

class ChecklistViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: - Table View Data Source
    override func tableView(
      _ tableView: UITableView,
      numberOfRowsInSection section: Int
    ) -> Int {
      return 100
    }
//    override func tableView(
//      _ tableView: UITableView,
//      cellForRowAt indexPath: IndexPath
//    ) -> UITableViewCell {
//      let cell = tableView.dequeueReusableCell(
//        withIdentifier: "ChecklistItem",
//        for: indexPath)
//      return cell
//    }
    override func tableView(
      _ tableView: UITableView,
      cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(
        withIdentifier: "ChecklistItem",
        for: indexPath)
      // Add the following code
      let label = cell.viewWithTag(1000) as! UILabel
      if indexPath.row % 5 == 0 {
        label.text = "Walk the dog"
      } else if indexPath.row % 5 == 1 {
        label.text = "Brush my teeth"
      } else if indexPath.row % 5 == 2 {
        label.text = "Learn iOS development"
      } else if indexPath.row % 5 == 3 {
        label.text = "Soccer practice"
      } else if indexPath.row % 5 == 4 {
        label.text = "Eat ice cream"
      }
      // End of new code block
      return cell
    }
    
    // MARK: - Table View Delegate
    override func tableView(
      _ tableView: UITableView,
      didSelectRowAt indexPath: IndexPath
    ) {
//      pg 237 this method below is diff from the similarly named method in the data source section but this one returns an existing cell for a row that's being displayed. the method above delivers a new or recycled cell object to the tableview when a row becomes visible (you don't call this)
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .none {
                cell.accessoryType = .checkmark
            } else {
                cell.accessoryType = .none
            }
        }
        tableView.deselectRow(at: indexPath, animated: true)

    }
//    chap 10
    
}

