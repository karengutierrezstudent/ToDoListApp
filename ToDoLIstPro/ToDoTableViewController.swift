//
//  ToDoTableViewController.swift
//  ToDoLIstPro
//
//  Created by Karen Gutierrez  on 7/27/20.
//  Copyright © 2020 Karen Gutierrez . All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    
        var toDos : [ToDo] = []
    
    func createToDos() -> [ToDo] {

     let swift = ToDo()
      swift.name = "Learn Swift"
      swift.important = true
        
     let dog = ToDo()
      dog.name = "Walk the Dog"
      // important is set to false by default

      return [swift, dog]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toDos = createToDos()
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

 override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
    return toDos.count
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


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
 */

}
