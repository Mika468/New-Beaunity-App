//
//  CompleteToDoViewController.swift
//  New-Beaunity-App
//
//  Created by Mikaela Foronda Zanipatin on 7/30/20.
//  Copyright © 2020 Mikaela Foronda. All rights reserved.
//

import UIKit

class CompleteToDoViewController: UIViewController {
    
var previousVC = ToDoTableViewController()
var selectedToDo = ToDo(listName: <#String#>, listInformation: <#Bool#>)
        
    @IBOutlet weak var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = selectedToDo.name
    }

    @IBAction func completeTapped(_ sender: Any) {
    }
}
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


