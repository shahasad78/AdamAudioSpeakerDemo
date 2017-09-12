//
//  SpeakerButton.swift
//  AdamAudioSpeakerDemo
//
//  Created by Richard Martinez on 9/10/17.
//  Copyright © 2017 Phantom Universal Media Productions. All rights reserved.
//

import UIKit

@IBDesignable class SpeakerButton: UIButton {
    
    private struct Constants {
        static let lineWidth: CGFloat = 5
        static let halfLineWidth: CGFloat = 2.5
    }
    
    @IBInspectable var selectedColor: UIColor = UIColor.yellow
    @IBInspectable var normalColor: UIColor = UIColor.gray
    
    var strokeColor: UIColor { return isSelected ? selectedColor : normalColor }

    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        let ovalRect = CGRect(x: bounds.origin.x + Constants.halfLineWidth,
                                y: bounds.origin.y + Constants.halfLineWidth,
                                width: bounds.width - Constants.lineWidth,
                                height: bounds.height - Constants.lineWidth)
        let path = UIBezierPath(ovalIn: ovalRect)
        strokeColor.setStroke()
        path.lineWidth = Constants.lineWidth
        path.stroke()
    }


}
