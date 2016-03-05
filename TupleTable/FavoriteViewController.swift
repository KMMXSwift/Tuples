//
//  FavoriteViewController.swift
//  TupleTable
//
//  Created by Ricardo Michel Reyes Martínez on 3/5/16.
//  Copyright © 2016 Ediciones Internacionales BCA. All rights reserved.
//

import UIKit

protocol FavoriteViewControllerDelegate
{
    func didEditTuple(tuple: (field: String, value: String, favorite: Bool), indexPath: NSIndexPath)
}

class FavoriteViewController: UIViewController
{
    var tuple: (field: String, value: String, favorite: Bool)?
    var indexPath: NSIndexPath?
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var favoriteButton: UIButton!
    
    var delegate: FavoriteViewControllerDelegate?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        if let tuple = tuple
        {
            favoriteButton.setTitle((tuple.favorite) ? "Quitar favorite" : "Hacer favorite", forState: UIControlState.Normal)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func markAsFavorite(sender: UIButton)
    {
        self.tuple = (tuple!.field, tuple!.value, !tuple!.favorite)
        favoriteButton.setTitle((tuple!.favorite) ? "Quitar favorite" : "Hacer favorite", forState: UIControlState.Normal)
        
        delegate?.didEditTuple(self.tuple!, indexPath: indexPath!)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
