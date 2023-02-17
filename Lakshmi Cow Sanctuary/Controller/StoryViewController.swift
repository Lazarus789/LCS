//
//  StoryViewController.swift
//  Lakshmi Cow Sanctuary
//
//  Created by Tanishq Babbar on 10/02/23.
//

import UIKit

class StoryViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(UINib(nibName: K.storyCellNibName, bundle: nil), forCellReuseIdentifier: K.storyCellIdentifier)
        
    }
    
}

extension StoryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return LCS.namesForStory.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: K.storyCellIdentifier, for: indexPath) as! CustomStoryCell
        
        cell.storyImageView.image = LCS.imagesSep[indexPath.row]
        cell.titleLabel.text = LCS.namesForStory[indexPath.row]
        cell.storyLabel.text = LCS.stories[indexPath.row]

        return cell
    }
}

extension StoryViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
