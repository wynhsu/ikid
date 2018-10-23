//
//  DadViewController.swift
//  iKid
//
//  Created by Wynston Hsu on 10/23/18.
//  Copyright © 2018 Wynston Hsu. All rights reserved.
//

import UIKit

class DadViewController: UIViewController {

    @IBOutlet weak var dadLabel: UILabel!
    @IBOutlet weak var dadButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dadLabel.translatesAutoresizingMaskIntoConstraints = false
        dadLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        dadLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        dadButton.translatesAutoresizingMaskIntoConstraints = false
        dadButton.topAnchor.constraint(equalTo: dadLabel.bottomAnchor, constant: 48).isActive = true
        dadButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        // Do any additional setup after loading the view.
    }

    @IBAction func btnPress(_ sender: UIButton) {
        dadLabel.text = "But don’t forget, only 48 hours ago, it was a sadder day."
    }
}
