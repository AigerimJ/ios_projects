//
//  Food.swift
//  POP_Test
//
//  Created by Aigerim on 11/15/17.
//  Copyright © 2017 Aigerim Janaliyeva. All rights reserved.
//

import Foundation
import UIKit

class FoodView: UIView {
    var name: String?
    var isHealthy: Bool

}
extension FoodView {
    var isHealthy: Bool { return self is Healthy }
}

class Healthy: UIView {
    var vitamins: Double
}
