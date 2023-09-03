//
//  TrackListViewController.swift
//  PizzaExpress
//
//  Created by N N on 03.09.2023.
//

import UIKit

class TrackListViewController: UITableViewController {
    var trackList = Track.getTrackList()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
        navigationItem.leftBarButtonItem    
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        trackList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "track", for: indexPath)
        let track = trackList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = track.pizza
        content.secondaryText = track.sostav
        content.image = UIImage(named: track.title)
        content.imageProperties.cornerRadius = tableView.rowHeight * 0.1
        cell.contentConfiguration = content
        return cell
    }

  //  // MARK: - Navigation
  //  override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
  //      80
  // }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? DetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailsVC.track = trackList[indexPath.row]
        
    }
    
}
