//
//  CustomView.swift
//  2ViewsHW
//
//  Created by Aigerim on 11/15/17.
//  Copyright © 2017 Aigerim Janaliyeva. All rights reserved.
//

import Foundation
import UIKit
import Cartography

class CustomView: UIView, UITextFieldDelegate {
    lazy var textField: UITextField = {
        var textField = UITextField()
        textField.backgroundColor = .white
        textField.textColor = .black
        textField.placeholder = "Type a color"
        textField.textAlignment = .center
        textField.delegate = self
        textField.font = .boldSystemFont(ofSize: 20)
        return textField
    }()
    var color = Color.yellowColor {
        didSet {
            textField.text = color.name
            self.backgroundColor = color.color
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        addSubview(textField)
        backgroundColor = Color.whiteColor.color
        let view = self
        constrain(textField, view) {
            textField, view in
            textField.centerX == view.centerX
            textField.centerY == view.centerY
            textField.width == view.width*0.8
            textField.height == 30
        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        for color in Color.colors {
            if textField.text?.lowercased() == color.name.lowercased() {
                self.color = color
            }
        }
        return true
    }
    
}

