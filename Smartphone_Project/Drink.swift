//
//  Drink.swift
//  Smartphone_Project
//
//  Created by Reema Dutta on 4/13/19.
//  Copyright © 2019 ReemaDutta. All rights reserved.
//

import Foundation
import UIKit

class Drink {
    var date = Date()
    var quantity = 0
    var weight:Double = 0.0
    var age = 0
   public convenience init(quantity:Int){
        self.init()
        self.quantity = quantity
    }
    public convenience init(weight:Double,age:Int){
        self.init()
        //Mark:Weight should be in pounds
        self.weight = weight / 2.2
        switch age {
        case 30:
            self.weight = self.weight * 40
        case 55:
            self.weight = self.weight * 35
        default:
            self.weight = self.weight * 30
        }
        //Mark : quantity in ounces
        self.quantity = Int(self.weight / 28.3)
        
        
    }
    
}
