//
//  ViewController.swift
//  TupleTable
//
//  Created by Ricardo Michel Reyes Martínez on 3/5/16.
//  Copyright © 2016 Ediciones Internacionales BCA. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    var tuples: [(field: String, value: String)] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        tuples.append(("Marca", "Porsche"))
        tuples.append(("Auto", "Cayman"))
        tuples.append(("Modelo", "2007"))
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("TupleCell")!
        
        let tuple = tuples[indexPath.row]
        
        cell.textLabel?.text = tuple.field
        cell.detailTextLabel?.text = tuple.value
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return tuples.count
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}