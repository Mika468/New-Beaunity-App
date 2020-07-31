//
//  ToDoTableViewController.swift
//  New-Beaunity-App
//
//  Created by Mikaela Foronda Zanipatin on 7/30/20.
//  Copyright © 2020 Mikaela Foronda. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    func createToDos() -> [ToDo] {
        let swift = ToDo(listName: <#String#>, listInformation: <#Bool#>)
swift.name = "Learn Swift"
swift.important = true

        let dog = ToDo(listName: <#String#>, listInformation: <#T##Bool#>)
        dog.name = "Walk the dog"
        dog.important = true
        return [swift, dog]
    }
    //}
var toDos : [ToDo] = []
    //var toDos : [ToDoCD] = []
    override func viewDidLoad() {
        super.viewDidLoad()
    toDos = createToDos()
}

    // MARK: - Table view data source

override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { return toDos.count
}

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let toDo = toDos[indexPath.row]
    if toDo.important {
        cell.textLabel?.text = "❗️" + toDo.name
      } else {
        cell.textLabel?.text = toDo.name
      }

      return cell
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
if let addVC = segue.destination as? AddToDoViewController {
addVC.previousVC = self
    }
        if let completeVC = segue.destination as? CompleteToDoViewController {
            if let toDo = sender as? ToDo {
              completeVC.selectedToDo = toDo
              completeVC.previousVC = self
            }
          }
        }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      let toDo = toDos[indexPath.row]

      performSegue(withIdentifier: "moveToComplete", sender: toDo)
    }
}

