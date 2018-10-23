//
//  ViewController.swift
//  iKid
//
//  Created by Wynston Hsu on 10/22/18.
//  Copyright © 2018 Wynston Hsu. All rights reserved.
//

import UIKit

class PunsViewController: UIViewController {

    @IBOutlet weak var punLabel: UILabel!
    @IBOutlet weak var punButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        punLabel.translatesAutoresizingMaskIntoConstraints = false
        punLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        punLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        punButton.translatesAutoresizingMaskIntoConstraints = false
        punButton.topAnchor.constraint(equalTo: punLabel.bottomAnchor, constant: 48).isActive = true
        punButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnPress(_ sender: UIButton) {
        punLabel.text = "They're remarkable."
    }
    
}

