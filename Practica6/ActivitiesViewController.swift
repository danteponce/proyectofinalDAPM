//
//  ActivitiesViewController.swift
//  Practica6
//
//  Created by Tatiana Fausto González on 7/6/19.
//  Copyright © 2019 MTI Cucea. All rights reserved.
//

import UIKit

class ActivitiesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self as? UITableViewDelegate
        tableView.dataSource = (self as! UITableViewDataSource)
        
        
        // Do any additional setup after loading the view.
    //}
    //override func viewWillAppear(_ animated: Bool) {
        //tableView.reloadData()
    //}
    
    //func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return task.count
    //}
    
    //*func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "task")
        
        //cell?.textLabel?.text = task[indexPath.row].task
        //cell?.detailTextLabel?.text = task[indexPath.row].dueDate.description
        
        //return cell!
        
    }//
    
}
