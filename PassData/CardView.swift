//
//  CardView.swift
//  PassData
//
//  Created by Krishna on 12/20/21.
//  Copyright © 2021 Krishna. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class CardView:UIView{
   
    @IBInspectable var cornerRadius:CGFloat = 5
    @IBInspectable var shadowOffsetWidth:CGFloat = 2
    @IBInspectable var shadowOffsetHeight:CGFloat = 2
    @IBInspectable var ofsetShadow: Float = 2
    @IBInspectable var shadowColor = UIColor.darkGray
    @IBInspectable var shadowOpacity :CGFloat = 0.5
        override func layoutSubviews() {
            layer.cornerRadius=self.cornerRadius
            layer.shadowColor=self.shadowColor.cgColor
            layer.shadowOffset = CGSize(width: self.shadowOffsetWidth, height: self.shadowOffsetHeight)
            layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: self.cornerRadius).cgPath
            layer.shadowOpacity = Float(self.shadowOpacity)
            
  
}


}
