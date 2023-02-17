//
//  CustomTableViewCell.swift
//  Lakshmi Cow Sanctuary
//
//  Created by Tanishq Babbar on 05/02/23.
//

import UIKit

protocol DataDelegate {
    func SegueToVC(name: String)
    func sendTitle(title: String)
    func passData(data: String, image: UIImage)
    func passPhotoData(num: Int, image: [[UIImage]], text: [[String]])
}

class CustomTableViewCell: UITableViewCell {
    
    var delegate: DataDelegate?
    
    var buttonTitle: String = ""
    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let tapGestureLeft = UITapGestureRecognizer(target: self, action: #selector(leftImageViewTapped))
        let tapGestureRight = UITapGestureRecognizer(target: self, action: #selector(rightImageViewTapped))
        leftImageView.addGestureRecognizer(tapGestureLeft)
        rightImageView.addGestureRecognizer(tapGestureRight)
        
        leftImageView.layer.borderWidth = 1
        rightImageView.layer.borderWidth = 1
        leftImageView.layer.borderColor = UIColor.black.cgColor
        rightImageView.layer.borderColor = UIColor.black.cgColor
        leftImageView.layer.cornerRadius = 10
        rightImageView.layer.cornerRadius = 10
        
    }
    
    @objc func leftImageViewTapped() {
        let leftText = leftImageView.accessibilityIdentifier!
        navigator(for: leftText)
    }
    
    @objc func rightImageViewTapped() {
        let rightText = rightImageView.accessibilityIdentifier!
        navigator(for: rightText)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        buttonTitle = sender.titleLabel!.text!
        navigator(for: buttonTitle)
        
    }
    
    func navigator(for buttonTitle: String) {
        
        if buttonTitle == LCS.textOnHome[0][0] {
            self.delegate?.sendTitle(title: buttonTitle)
            self.delegate?.passData(data: LCS().aboutLCS, image: UIImage(imageLiteralResourceName: "about-lcs"))
            self.delegate?.SegueToVC(name: "lcsSegue")
        }
        else if buttonTitle == LCS.textOnHome[0][1] {
            self.delegate?.sendTitle(title: buttonTitle)
            self.delegate?.passData(data: LCS().aboutSastri, image: UIImage(imageLiteralResourceName: "Sastri"))
            self.delegate?.SegueToVC(name: "lcsSegue")
        }
        else if buttonTitle == LCS.textOnHome[1][0] {
            self.delegate?.sendTitle(title: buttonTitle)
            self.delegate?.passPhotoData(num: LCS.imagesOfCows.count, image: LCS.imagesOfCows, text: LCS.cowNames)
            self.delegate?.SegueToVC(name: "photoSegue")
        }
        else if buttonTitle == LCS.textOnHome[1][1] {
            self.delegate?.sendTitle(title: buttonTitle)
            self.delegate?.passPhotoData(num: LCS.otherImages.count, image: LCS.otherImages, text: LCS.otherNames)
            self.delegate?.SegueToVC(name: "photoSegue")
        }
        else if buttonTitle == LCS.textOnHome[2][0] {
            self.delegate?.sendTitle(title: buttonTitle)
            self.delegate?.SegueToVC(name: "storySegue")
        }
        else if buttonTitle == LCS.textOnHome[2][1] {
            self.delegate?.sendTitle(title: buttonTitle)
        }
        
    }
    
}
