//
//  ViewController.swift
//  ProtocolHW
//
//  Created by Aigerim on 11/8/17.
//  Copyright © 2017 Aigerim Janaliyeva. All rights reserved.
//

import UIKit
import Cartography

protocol NameDelegate {
    func changeName(name: String)
}

class ViewController: UIViewController {
    
    lazy var nameLabel: UILabel = {
        var label = UILabel()
        label.text = "Unnamed"
        return label
    }()
    
    lazy var customView: MainView = MainView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        setup()
    }
    
    func setup(){
        
        customView.delegate = self
        [nameLabel, customView].forEach{view.addSubview($0)}
        
        constrain(nameLabel, customView, view){
            nameLabel, customView, view in
            
            nameLabel.top == view.top + 30
            nameLabel.width == view.width*0.8
            nameLabel.height == 40
            nameLabel.centerX == view.centerX
            
            customView.centerX == nameLabel.centerX
            customView.top == nameLabel.bottom + 30
            customView.height == view.height*0.7
            customView.width == nameLabel.width
            
        }
    }
    
}

extension ViewController: NameDelegate {
    func changeName(name: String) {
        nameLabel.text = name
    }
    
    
}
