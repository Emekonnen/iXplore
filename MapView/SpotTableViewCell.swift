//
//  SpotTableViewCell.swift
//  iXplore
//
//  Created by Eden Mekonnen on 6/8/16.
//  Copyright © 2016 Eden Mekonnen. All rights reserved.
//

import UIKit

class SpotTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var imageViewCell: UIImageView!
    
    @IBOutlet weak var star1: UIButton!
    
    @IBOutlet weak var star2: UIButton!
    
    @IBOutlet weak var star3: UIButton!
    
    @IBOutlet weak var star4: UIButton!
    
    @IBOutlet weak var star5: UIButton!
    
    
    @IBAction func ButtonTapped(sender: UIButton) {
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    
}
