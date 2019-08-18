//
//  SumView.swift
//  2ViewsHW
//
//  Created by Aigerim on 11/15/17.
//  Copyright © 2017 Aigerim Janaliyeva. All rights reserved.
//

import Foundation
import UIKit
import Cartography

protocol SumViewDelegate {
    func reverseButtonPressed()
}

class SumView: UIView {
    lazy var customView1: CustomView = CustomView()
    lazy var customView2: CustomView = CustomView()
    var delegate: SumViewDelegate?
    lazy var reverseButton: UIButton = {
        var button = UIButton()
        button.setTitle("Reverse", for: .normal)
        button.backgroundColor = .black
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(reverseColors), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK : - Functions
    
    @objc func reverseColors() {
        delegate?.reverseButtonPressed()
    }
    
    func setup() {
        self.backgroundColor = .white
        let view = self
        [reverseButton, customView1, customView2].forEach{view.addSubview($0)}
        
        constrain(reverseButton, customView1, view) {
            reverseButton, customView1, view in
            
            reverseButton.centerX == view.centerX
            reverseButton.width == 100
            reverseButton.centerY == view.centerY
            reverseButton.height == 50

            customView1.centerX == view.centerX
            customView1.width == 200
            customView1.height == 200
            customView1.bottom == reverseButton.top - 15
        }
        
        constrain(reverseButton, customView2, view){
            reverseButton, customView2, view in
            
            customView2.top == reverseButton.bottom + 15
            customView2.width == 200
            customView2.centerX == view.centerX
            customView2.height == 200
        }
    }
    
}
