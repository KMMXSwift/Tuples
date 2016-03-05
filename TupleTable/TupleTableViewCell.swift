//
//  TupleTableViewCell.swift
//  TupleTable
//
//  Created by Ricardo Michel Reyes Martínez on 3/5/16.
//  Copyright © 2016 Ediciones Internacionales BCA. All rights reserved.
//

import UIKit

class TupleTableViewCell: UITableViewCell
{
    @IBOutlet weak var label: UILabel!
 
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
