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
    @IBOutlet weak var dadImage: UIImageView!
    @IBOutlet var dadView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dadLabel.translatesAutoresizingMaskIntoConstraints = false
        dadLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        dadLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        dadButton.translatesAutoresizingMaskIntoConstraints = false
        dadButton.topAnchor.constraint(equalTo: dadLabel.bottomAnchor, constant: 48).isActive = true
        dadButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        dadImage.translatesAutoresizingMaskIntoConstraints = false
        dadImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        dadImage.bottomAnchor.constraint(equalTo: dadLabel.topAnchor).isActive = true
        dadImage.leftAnchor.constraint(equalTo: view.leftAnchor)
        dadImage.rightAnchor.constraint(equalTo: view.rightAnchor)
        
        // Do any additional setup after loading the view.
    }

    @IBAction func btnPress(_ sender: UIButton) {
        let label = dadButton.titleLabel?.text
        if label == "Next" {
            dadLabel.text = "But don’t forget only 48 hours ago, it was a sadder day."
            dadImage.image = #imageLiteral(resourceName: "saturday")
            UIView.transition(with: dadView, duration: 0.4, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            dadButton.setTitle("Back", for: .normal)
        } else {
            dadLabel.text = "I know ypu're sad because it’s a Monday..."
            dadImage.image = #imageLiteral(resourceName: "sad")
            UIView.transition(with: dadView, duration: 0.4, options: .transitionFlipFromRight, animations: nil, completion: nil)
            dadButton.setTitle("Next", for: .normal)
        }
    }
}
