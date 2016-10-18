//
//  PhotoView.swift
//  Filterer
//
//  Created by Osmar Rodríguez on 10/16/16.
//  Copyright © 2016 UofT. All rights reserved.
//

import UIKit

class PhotoView: UIImageView {
    var lastTouchTime: NSDate? = nil
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesMoved(touches, with: event)
        
        let currentTime = NSDate()
        if let previousTime = lastTouchTime{
            if currentTime.timeIntervalSince(previousTime as Date) < 0.5 {
                print("Double Tap!")
                
                lastTouchTime = nil
            } else {
                lastTouchTime = currentTime
            }
        } else {
            lastTouchTime = currentTime
        }

    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)

    }
    
}
