//
//  EllipseView.swift
//  LiveInterfaceBuilder
//
//  Created by Sivarama Krishna on 24/11/19.
//  Copyright © 2019 Arepu PavanKumar. All rights reserved.
//

import UIKit
@IBDesignable
class EllipseView: UIView {
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
        @IBInspectable var strokeWidth: CGFloat = 0
        @IBInspectable var fillColor: UIColor = UIColor.black
        @IBInspectable var strokeColor: UIColor = UIColor.clear
        
        override func draw(_ rect: CGRect) {
            guard let context = UIGraphicsGetCurrentContext() else { return }
            let rectangle = bounds.insetBy(dx: strokeWidth / 2, dy: strokeWidth / 2)
            
            context.setFillColor(fillColor.cgColor)
            context.setStrokeColor(strokeColor.cgColor)
            context.setLineWidth(strokeWidth)
            
            context.addEllipse(in: rectangle)
            context.drawPath(using: .fillStroke)
        }
}
