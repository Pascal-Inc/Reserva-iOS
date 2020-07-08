//
//  Data.swift
//  Reserva
//
//  Created by Ho Jon Yew on 6/7/20.
//  Copyright © 2020 Pascal Inc. All rights reserved.
//

import Foundation
import UIKit

var color1 = UIColor(red: 114/255, green: 147/255, blue: 255/255, alpha: 1.0)
var color2 = UIColor(red: 60/255, green: 60/255, blue: 60/255, alpha: 1.0)
var color3 = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)

var cornerRadius1 = 5


class ButtomCustomStyle1: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.cornerRadius = CGFloat(cornerRadius1)
        backgroundColor = color1
        setTitleColor(color3, for: .normal)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
        
    }


   /* func buttonstyle1() {
        layer.cornerRadius = CGFloat(cornerRadius1)
        backgroundColor = color1
        setTitleColor(color3, for: .normal)
    }
 /**/*/
