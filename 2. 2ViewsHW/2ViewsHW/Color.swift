//
//  Color.swift
//  2ViewsHW
//
//  Created by Aigerim on 11/15/17.
//  Copyright © 2017 Aigerim Janaliyeva. All rights reserved.
//

import Foundation
import UIKit

struct Color {
    
    var name: String
    var color: UIColor
    
    static let yellowColor = Color(name: "yellow", color: .yellow)
    static let greenColor = Color(name: "green", color: .green)
    static let redColor = Color(name: "red", color: .red)
    static let blueColor = Color(name: "blue", color: .blue)
    static let whiteColor = Color(name: "white", color: .white)
    static let grayColor = Color(name: "gray", color: .gray)
    static let blackColor = Color(name: "black", color: .black)
    
    static let colors: [Color] = [redColor, blueColor, whiteColor, yellowColor, greenColor, grayColor,blackColor]
}
