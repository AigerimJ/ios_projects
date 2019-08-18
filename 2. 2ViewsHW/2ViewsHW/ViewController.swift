//
//  ViewController.swift
//  2ViewsHW
//
//  Created by Aigerim on 11/15/17.
//  Copyright © 2017 Aigerim Janaliyeva. All rights reserved.
//

import UIKit
import Cartography

class ViewController: UIViewController, SumViewDelegate {

    lazy var sumView: SumView = SumView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        setup()
    }
    
    //MARK: - Functions

    func setup(){
        [sumView].forEach{view.addSubview($0)}
        
        sumView.delegate = self
        constrain(sumView, view){
            sumView, view in
            sumView.centerX == view.centerX
            sumView.width == view.height * 0.8
            sumView.height == view.width * 0.8
            sumView.centerY == view.centerY
        }
    }
    func reverseButtonPressed() {
        let color = sumView.customView1.color
        sumView.customView1.color = sumView.customView2.color
        sumView.customView2.color = color
    }

}

