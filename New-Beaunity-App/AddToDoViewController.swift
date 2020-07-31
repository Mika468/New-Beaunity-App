//
//  AddToDoViewController.swift
//  New-Beaunity-App
//
//  Created by Mikaela Foronda Zanipatin on 7/30/20.
//  Copyright © 2020 Mikaela Foronda. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {

var previousVC = ToDoTableViewController()

    
    @IBOutlet weak var titleTextField: UITextField!
    
    
    @IBOutlet var importantSwitch: UIView!
    
override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addTapped(_ sender: Any) {

if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
    let toDo = ToDoCD (entity: ToDoCD.entity(), insertInto: context)
if let titleText = titleTextField.text {
toDo.name = titleText
toDo.important = importantSwitch.isOn
    }

try? context.save()
    navigationController?.popViewController(animated: true)
    
        }
        
    }
    
}



    //let toDo = ToDo(listName: <#String#>, listInformation: <#Bool#>)
    
        //previousVC.toDos.append(toDo)
       // previousVC.tableView.reloadData()
    //navigationController?.popViewController(animated: true)
//}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



//}

