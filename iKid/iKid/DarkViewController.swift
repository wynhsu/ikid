//
//  DarkViewController.swift
//  iKid
//
//  Created by Wynston Hsu on 10/23/18.
//  Copyright © 2018 Wynston Hsu. All rights reserved.
//

import UIKit

class DarkViewController: UIViewController {

    @IBOutlet weak var darkLabel: UILabel!
    @IBOutlet weak var darkButton: UIButton!
    @IBOutlet weak var darkImage: UIImageView!
    @IBOutlet var darkView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        darkLabel.translatesAutoresizingMaskIntoConstraints = false
        darkLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        darkLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        darkButton.translatesAutoresizingMaskIntoConstraints = false
        darkButton.topAnchor.constraint(equalTo: darkLabel.bottomAnchor, constant: 48).isActive = true
        darkButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        darkImage.translatesAutoresizingMaskIntoConstraints = false
        darkImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        darkImage.bottomAnchor.constraint(equalTo: darkLabel.topAnchor).isActive = true
        darkImage.leftAnchor.constraint(equalTo: view.leftAnchor)
        darkImage.rightAnchor.constraint(equalTo: view.rightAnchor)
        
        // Do any additional setup after loading the view.
    }

    @IBAction func btnPress(_ sender: UIButton) {
        let label = darkButton.titleLabel?.text
        if label == "Next" {
            darkLabel.text = "None, they just beat the room for being black."
            darkImage.image = #imageLiteral(resourceName: "Rectangle")
            UIView.transition(with: darkView, duration: 0.4, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            darkButton.setTitle("Back", for: .normal)
        } else {
            darkLabel.text = "How many cops does it take to screw in a lightbulb?"
            darkImage.image = #imageLiteral(resourceName: "lightbulb")
            UIView.transition(with: darkView, duration: 0.4, options: .transitionFlipFromRight, animations: nil, completion: nil)
            darkButton.setTitle("Next", for: .normal)
        }
    }
}
