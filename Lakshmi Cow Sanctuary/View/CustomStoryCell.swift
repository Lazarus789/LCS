//
//  CustomStoryCell.swift
//  Lakshmi Cow Sanctuary
//
//  Created by Tanishq Babbar on 10/02/23.
//

import UIKit

class CustomStoryCell: UITableViewCell {
    
    @IBOutlet weak var storyImageView: UIImageView!
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        storyImageView.layer.borderWidth = 1
        storyImageView.layer.borderColor = UIColor.black.cgColor
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
