//
//  PositionCell.swift
//  HappyMap
//
//  Created by user on 2019/9/28.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit

class PositionCell: UITableViewCell {
    
    @IBOutlet weak var lbname : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
        // Configure the view for the selected state
    }

    
    func updateContent(name : String) -> Void {
        lbname.text = name
    }
    
}
