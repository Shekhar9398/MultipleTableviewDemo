//
//  FirstTableViewController.swift
//  MultipleTableView
//
//  Created by Shraddha Manwar on 04/07/22.
//

import UIKit

class FirstTableViewController: UITableViewController {
    
    var firstArr = [String]()
    var secondArr = [AnimalList]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstArr = ["Wild","Pets","Aqua"]
        
        secondArr = [AnimalList(name: ["Lion", "Tiger", "Elephant"]), AnimalList(name: ["Cat", "Dog", "Parrot"]), AnimalList(name: ["Duck", "Octopus", "Fish"]) ]
        
    }
    
    // MARK: - Table view data source
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return firstArr.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FirstCell", for: indexPath)
        
        cell.textLabel?.text = firstArr [indexPath.row]
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vController = storyboard.instantiateViewController(identifier: "SecondTableViewController") as SecondTableViewController
        vController.secondArr = secondArr[indexPath.row].name
        navigationController?.pushViewController(vController, animated: true)
        
        //        animation
        //            UIStoryboard.instantiateViewController(identifier: "SecondTableViewController") as SecondTableViewController
        
        
        
    }
    
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    
    // MARK: - Navigation
    
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //        super.prepare(for: segue, sender: self)
    //
    //        let vc = segue.destination as! SecondTableViewController
    //        let indexpath : NSIndexPath = self.tableView.indexPathForSelectedRow! as NSIndexPath
    //        vc.secondArr = secondArr[indexpath.row].name
    //
    //    }
    //
    
    
    
}
