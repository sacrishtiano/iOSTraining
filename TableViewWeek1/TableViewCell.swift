//
//  TableViewCell.swift
//  TableViewWeek1
//
//  Created by Sachin Khandelwal on 06/10/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var label : UILabel!
    @IBOutlet var myImage : UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
