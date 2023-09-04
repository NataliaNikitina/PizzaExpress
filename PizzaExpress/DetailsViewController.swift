//
//  DetailsViewController.swift
//  PizzaExpress
//
//  Created by N N on 03.09.2023.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet var artCoverImageView: UIImageView!
    @IBOutlet var pizzaSostavLabel: UILabel!
    @IBOutlet var pizzaAboutLabel: UILabel!
    
    var track: Track!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        artCoverImageView.image = UIImage(named: track.title)
        pizzaSostavLabel.text = track.title
        pizzaAboutLabel.text = track.about
       
    }
    

   

}
