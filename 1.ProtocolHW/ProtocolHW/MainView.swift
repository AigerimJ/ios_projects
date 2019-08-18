//
//  MainView.swift
//  ProtocolHW
//
//  Created by Aigerim on 11/8/17.
//  Copyright © 2017 Aigerim Janaliyeva. All rights reserved.
//

import Foundation
import UIKit
import Cartography

class MainView: UIView {
    
    lazy var textField: UITextField = {
        var textField = UITextField()
        textField.backgroundColor = .white
        textField.textColor = .black
        textField.font = .boldSystemFont(ofSize: 30)
        return textField
    }()
    
    lazy var submitButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .green
        button.setTitle("Submit", for: .normal)
        button.addTarget(self, action: #selector(submitButtonPressed), for: .touchUpInside)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    var delegate: NameDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    @objc func submitButtonPressed(){
        let text = textField.text
        guard text != nil else {
            print("No name!")
            return
        }
        delegate?.changeName(name: text!)
    }
    
    func setup() {
        

        
        self.backgroundColor = .yellow
        [textField, submitButton].forEach{addSubview($0)}

        
        let view = self
        
        constrain(textField, submitButton, view){
            textField, submitButton, view in
            
            textField.centerX == view.centerX
            textField.height == 40
            textField.top == view.top + 20
            textField.width == view.width*0.8
            
            submitButton.width == textField.width
            submitButton.height == 40
            submitButton.top == textField.bottom + 40
            submitButton.centerX == textField.centerX
            
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
