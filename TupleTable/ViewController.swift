//
//  ViewController.swift
//  TupleTable
//
//  Created by Ricardo Michel Reyes Martínez on 3/5/16.
//  Copyright © 2016 Ediciones Internacionales BCA. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, FavoriteViewControllerDelegate
{
    var tuples: [(field: String, value: String, favorite: Bool)] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    tuples.append(("MarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarcaMarca", "Porsche", false))
        tuples.append(("Auto", "Cayman", false))
        tuples.append(("Modelo", "2007", false))
        
        tableView.estimatedRowHeight = 100.0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("TupleCell") as! TupleTableViewCell
        
        let tuple = tuples[indexPath.row]
        
        cell.label.text = tuple.field
        cell.accessoryType = (tuple.favorite) ? UITableViewCellAccessoryType.Checkmark : UITableViewCellAccessoryType.None
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return tuples.count
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if (segue.identifier == "FavoriteSegue")
        {
            if let indexPath = tableView.indexPathForSelectedRow
            {
                let tuple = tuples[indexPath.row]
                
                let vc = segue.destinationViewController as! FavoriteViewController
                vc.tuple = tuple
                vc.indexPath = indexPath
                vc.delegate = self
            }
        }
    }
    
    func didEditTuple(tuple: (field: String, value: String, favorite: Bool), indexPath: NSIndexPath)
    {
        tuples[indexPath.row] = tuple
        tableView.reloadData()
        
        //Save core data
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}