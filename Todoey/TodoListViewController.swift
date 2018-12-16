//
//  ViewController.swift
//  Todoey
//
//  Created by David Shi on 12/15/18.
//  Copyright © 2018 David Shi. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    @IBOutlet weak var toDoItem: UILabel!
    var itemArray = ["Find Mike", "Buy Eggos", "Destroy Demogorgon"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK:- Tableview Datasource Methods
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    //MARK:- Tableview Delegate Methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let cell = tableView.cellForRow(at: indexPath) else {
            return
        }
        print(cell.textLabel!.text!)
        if cell.accessoryType == .none {
            cell.accessoryType = .checkmark
        }
        else {
            cell.accessoryType = .none
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    //MARK:- Add items
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        let alertController = UIAlertController(title: "Add New Todoey Item", message: "", preferredStyle: .alert)
        alertController.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "Enter To Do"
        }

        let saveAction = UIAlertAction(title: "Confirm", style: .default, handler: { alert -> Void in
            guard let textField = alertController.textFields?[0] else {
                return
            }
            self.itemArray.append(textField.text!)
            self.tableView.reloadData()
        })
        let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        
        alertController.addAction(saveAction)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
    


}

