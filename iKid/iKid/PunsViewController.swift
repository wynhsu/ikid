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
    @IBOutlet weak var punImage: UIImageView!
    @IBOutlet var punView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        punLabel.translatesAutoresizingMaskIntoConstraints = false
        punLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        punLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        punButton.translatesAutoresizingMaskIntoConstraints = false
        punButton.topAnchor.constraint(equalTo: punLabel.bottomAnchor, constant: 48).isActive = true
        punButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        punImage.translatesAutoresizingMaskIntoConstraints = false
        punImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        punImage.bottomAnchor.constraint(equalTo: punLabel.topAnchor).isActive = true
        punImage.leftAnchor.constraint(equalTo: view.leftAnchor)
        punImage.rightAnchor.constraint(equalTo: view.rightAnchor)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnPress(_ sender: UIButton) {
        let label = punButton.titleLabel?.text
        if label == "Next" {
            punLabel.text = "They're remarkable."
            punImage.image = #imageLiteral(resourceName: "markers")
            UIView.transition(with: punView, duration: 0.4, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            punButton.setTitle("Back", for: .normal)
        } else {
            punLabel.text = "Whiteboards aren't just great..."
            punImage.image = #imageLiteral(resourceName: "whiteboard")
            UIView.transition(with: punView, duration: 0.4, options: .transitionFlipFromRight, animations: nil, completion: nil)
            punButton.setTitle("Next", for: .normal)
        }
    }
    
}

