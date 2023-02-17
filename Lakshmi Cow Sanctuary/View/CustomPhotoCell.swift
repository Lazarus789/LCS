//
//  CustomPhotoCell.swift
//  Lakshmi Cow Sanctuary
//
//  Created by Tanishq Babbar on 10/02/23.
//

import UIKit

class CustomPhotoCell: UITableViewCell {
    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftTextLabel: UILabel!
    @IBOutlet weak var rightTextLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        leftImageView.layer.borderWidth = 1
        rightImageView.layer.borderWidth = 1
        leftImageView.layer.borderColor = UIColor.black.cgColor
        rightImageView.layer.borderColor = UIColor.black.cgColor
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
