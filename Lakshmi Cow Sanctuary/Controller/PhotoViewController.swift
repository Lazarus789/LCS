//
//  PhotoViewController.swift
//  Lakshmi Cow Sanctuary
//
//  Created by Tanishq Babbar on 10/02/23.
//

import UIKit

class PhotoViewController: UIViewController {
    
    var numOfRows: Int!; var imageToShow: [[UIImage]]!; var textToShow: [[String]]!

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: K.photoCellNibName, bundle: nil), forCellReuseIdentifier: K.photoCellIdentifier)
        
    }
    
}

extension PhotoViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: K.photoCellIdentifier, for: indexPath) as! CustomPhotoCell
        
        if indexPath.row == (numOfRows-1) {
            cell.rightImageView.layer.borderWidth = 0
        }
        
        cell.leftImageView.image = imageToShow[indexPath.row][0]
        cell.rightImageView.image = imageToShow[indexPath.row][1]
        cell.leftTextLabel.text = textToShow[indexPath.row][0]
        cell.rightTextLabel.text = textToShow[indexPath.row][1]
        return cell
        
    }
    
}

extension PhotoViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
