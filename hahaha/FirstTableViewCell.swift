//
//  FirstTableViewCell.swift
//  hahaha
//
//  Created by Maggie Lau on 4/5/2016.
//  Copyright © 2016 madmadgroup. All rights reserved.
//

import UIKit



class FirstTableViewCell: UITableViewCell {

    @IBOutlet var cellLabel : UILabel!
    @IBOutlet var cellImage : UIImageView!
    @IBOutlet var cellButton : UIButton!
    
//    init(style: UITableViewCellStyle, reuseIdentifier: String) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
