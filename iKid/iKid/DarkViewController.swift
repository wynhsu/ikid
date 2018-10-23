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
    override func viewDidLoad() {
        super.viewDidLoad()

        darkLabel.translatesAutoresizingMaskIntoConstraints = false
        darkLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        darkLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        darkButton.translatesAutoresizingMaskIntoConstraints = false
        darkButton.topAnchor.constraint(equalTo: darkLabel.bottomAnchor, constant: 48).isActive = true
        darkButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        // Do any additional setup after loading the view.
    }

}
