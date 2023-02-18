//
//  ViewController.swift
//  Lakshmi Cow Sanctuary
//
//  Created by Tanishq Babbar on 03/02/23.
//

import UIKit

class ViewController: UIViewController, DataDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var toolbar: UIToolbar!
    
    @IBOutlet weak var phone: UIBarButtonItem!
    let flexibleSpace1 = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
    @IBOutlet weak var mail: UIBarButtonItem!
    let flexibleSpace2 = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
    @IBOutlet weak var site: UIBarButtonItem!
    let flexibleSpace3 = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
    @IBOutlet weak var loc: UIBarButtonItem!
    let flexibleSpace4 = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
    @IBOutlet weak var facebook: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellReuseIdentifier: K.cellIdentifier)
//        NotificationCenter.default.addObserver(self, selector: #selector(deviceOrientationDidChange), name: UIDevice.orientationDidChangeNotification, object: nil)
        
        toolbar.items = [phone,flexibleSpace1,mail,flexibleSpace2,site,flexibleSpace3,loc,flexibleSpace4,facebook]
//        view.addSubview(toolbar)
//
//        toolbar.translatesAutoresizingMaskIntoConstraints = false
//        toolbar.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
//        toolbar.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
//        toolbar.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        toolbar.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//            super.viewWillAppear(animated)
//
//            updateToolbarVisibility()
//    }
//
//    func updateToolbarVisibility() {
//            if UIDevice.current.orientation.isLandscape {
//                toolbar.isHidden = true
//            } else {
//                toolbar.isHidden = false
//            }
//    }
//
//    @objc func deviceOrientationDidChange() {
//            updateToolbarVisibility()
//    }
    
    var titleToShow: String = ""
    func sendTitle(title: String) {
        titleToShow = title
        
        if title == LCS.textOnHome[2][1] {
            let webViewController = WebViewController()
            webViewController.load(url: URL(string: K.subURL)!)
            present(webViewController, animated: true, completion: nil)
        }
    }
    
    var msgToShow: String = ""; var imageToShow: UIImage?
    func passData(data: String, image: UIImage) {msgToShow = data; imageToShow = image}
    
    var numOfRows: Int!; var photo: [[UIImage]]!; var photoText: [[String]]!
    func passPhotoData(num: Int, image: [[UIImage]], text: [[String]]) {
        numOfRows = num
        photo = image
        photoText = text
    }

    func SegueToVC(name: String) {
        
        self.performSegue(withIdentifier: name, sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "lcsSegue" {
            let destinationVC = segue.destination as! InfoViewController
            destinationVC.loadView()
            destinationVC.navigationItem.title = titleToShow
            destinationVC.imageView.image = imageToShow
            destinationVC.textLabel?.text = msgToShow
        }
        else if segue.identifier == "photoSegue" {
            let destinationVC = segue.destination as! PhotoViewController
            //destinationVC.loadView()
            destinationVC.navigationItem.title = titleToShow
            destinationVC.numOfRows = numOfRows
            destinationVC.imageToShow = photo
            destinationVC.textToShow = photoText
        }
        else if segue.identifier == "storySegue" {
            let destinationVC = segue.destination as! StoryViewController
            //destinationVC.loadView()
            destinationVC.navigationItem.title = titleToShow
        }
    }
    
    
    
    @IBAction func phoneButtonPressed(_ sender: UIBarButtonItem) {
        if let url = URL(string: "tel://\(K.toDial)"), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func mailButtonPressed(_ sender: UIBarButtonItem) {
        if let url = URL(string: "mailto:\(K.email)"), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func webButtonPressed(_ sender: UIBarButtonItem) {
        let webViewController = WebViewController()
        webViewController.load(url: URL(string: K.siteURL)!)
        present(webViewController, animated: true, completion: nil)
    }
    
    @IBAction func locationButtonPressed(_ sender: UIBarButtonItem) {
        let location = K.loc
        let urlString = "http://maps.apple.com/?q=\(location.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!)"
        
        if let url = URL(string: urlString), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func facebookButtonPressed(_ sender: UIBarButtonItem) {
        let webViewController = WebViewController()
        webViewController.load(url: URL(string: K.fbURL)!)
        present(webViewController, animated: true, completion: nil)
    }
    
}

//MARK: - Table View Data Source Methods
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return LCS.imagesOnHome.count
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath) as! CustomTableViewCell
        
        cell.leftImageView.image = LCS.imagesOnHome[indexPath.row][0]
        cell.leftImageView.accessibilityIdentifier = LCS.leftimages[indexPath.row]
        cell.rightImageView.image = LCS.imagesOnHome[indexPath.row][1]
        cell.rightImageView.accessibilityIdentifier = LCS.rifghtImages[indexPath.row]
        cell.leftButton.setTitle(LCS.textOnHome[indexPath.row][0], for: .normal)
        cell.rightButton.setTitle(LCS.textOnHome[indexPath.row][1], for: .normal)
        cell.delegate = self
        return cell
    }
    
}

//MARK: - Table View Delegate Methods
extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

