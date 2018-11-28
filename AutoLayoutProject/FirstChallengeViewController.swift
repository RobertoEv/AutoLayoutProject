//
//  FirstChallengeViewController.swift
//  AutoLayoutProject
//
//  Created by Roberto Evangelista on 28/11/18.
//  Copyright © 2018 Davi Cabral. All rights reserved.
//

import UIKit

class FirstChallengeViewController: UIViewController {
    
    lazy var greenView: UIView = {
        let newView = UIView()
        newView.backgroundColor = .green
        view.addSubview(newView)
        newView.translatesAutoresizingMaskIntoConstraints = false
        return newView
    }()
    
    lazy var redView: UIView = {
        let newView = UIView()
        newView.backgroundColor = .red
        view.addSubview(newView)
        newView.translatesAutoresizingMaskIntoConstraints = false
        return newView
    }()
    
    override func viewWillLayoutSubviews() {
        let guide = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            //IOS 11
            greenView.topAnchor.constraintEqualToSystemSpacingBelow(guide.topAnchor, multiplier: 1.0),
            guide.bottomAnchor.constraintEqualToSystemSpacingBelow(greenView.bottomAnchor, multiplier: 1.0),
            redView.topAnchor.constraintEqualToSystemSpacingBelow(guide.topAnchor, multiplier: 1.0),
            guide.bottomAnchor.constraintEqualToSystemSpacingBelow(redView.bottomAnchor, multiplier: 1.0),
                        
            greenView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            redView.leadingAnchor.constraint(equalTo: greenView.trailingAnchor, constant: 20),
            redView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            redView.widthAnchor.constraint(equalTo: greenView.widthAnchor)
        ])
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
