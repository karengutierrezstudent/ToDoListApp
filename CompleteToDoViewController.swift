//
//  CompleteToDoViewController.swift
//  ToDoLIstPro
//
//  Created by Karen Gutierrez  on 7/27/20.
//  Copyright © 2020 Karen Gutierrez . All rights reserved.
//

import UIKit

class CompleteToDoViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
   titleLabel.text = selectedToDo.name
    }
    
    @IBAction func completedTapped(_ sender: Any) {
    }
    
    var previousVC = ToDoTableViewController()
    var selectedToDo = ToDo()
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
