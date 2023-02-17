//
//  MenuViewController.swift
//  Lakshmi Cow Sanctuary
//
//  Created by Tanishq Babbar on 12/02/23.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var menuImageView: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.separatorColor = .white
        tableView.dataSource = self
        tableView.delegate = self
        menuImageView.image = UIImage(imageLiteralResourceName: "menu")
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return LCS.textOnHomeForMenu.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: K.munuCellIdentifier, for: indexPath)
        cell.textLabel?.text = LCS.textOnHomeForMenu[indexPath.row]
        cell.textLabel?.textColor = .white
        cell.accessoryView?.backgroundColor = .white
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedRow = LCS.textOnHomeForMenu[indexPath.row]
        
        if selectedRow == LCS.textOnHome[0][0] {
            let vc = storyboard?.instantiateViewController(withIdentifier: "InfoVC") as! InfoViewController
            vc.loadView()
            vc.imageView.image = UIImage(imageLiteralResourceName: "about-lcs")
            vc.textLabel.text = LCS().aboutLCS
            vc.modalPresentationStyle = .popover
            present(vc, animated: true)
        }
        else if selectedRow == LCS.textOnHome[0][1] {
            let vc = storyboard?.instantiateViewController(withIdentifier: "InfoVC") as! InfoViewController
            vc.loadView()
            vc.imageView.image = UIImage(imageLiteralResourceName: "Sastri")
            vc.textLabel.text = LCS().aboutSastri
            vc.modalPresentationStyle = .popover
            present(vc, animated: true)
        }
        else if selectedRow == LCS.textOnHome[1][0] {
            let vc = storyboard?.instantiateViewController(withIdentifier: "PhotoVC") as! PhotoViewController
            vc.numOfRows = LCS.imagesOfCows.count
            vc.imageToShow = LCS.imagesOfCows
            vc.textToShow = LCS.cowNames
            vc.modalPresentationStyle = .popover
            present(vc, animated: true)
        }
        else if selectedRow == LCS.textOnHome[1][1] {
            let vc = storyboard?.instantiateViewController(withIdentifier: "PhotoVC") as! PhotoViewController
            vc.numOfRows = LCS.otherImages.count
            vc.imageToShow = LCS.otherImages
            vc.textToShow = LCS.otherNames
            vc.modalPresentationStyle = .popover
            present(vc, animated: true)
        }
        else if selectedRow == LCS.textOnHome[2][0] {
            let vc = storyboard?.instantiateViewController(withIdentifier: "StoryVC") as! StoryViewController
            vc.modalPresentationStyle = .popover
            present(vc, animated: true)
        }
        else if selectedRow == LCS.textOnHome[2][1] {
            let webViewController = WebViewController()
            webViewController.load(url: URL(string: K.subURL)!)
            present(webViewController, animated: true, completion: nil)
        }
        else if selectedRow == LCS.textOnHomeForMenu[0] {
            dismiss(animated: true)
        }
        

        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }

}


