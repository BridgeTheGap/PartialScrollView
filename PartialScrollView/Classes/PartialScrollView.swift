//
//  PartialScrollView.swift
//  TestBed
//
//  Created by Joshua Park on 16.06.13..
//  Copyright © 2016 Monetor. All rights reserved.
//

import UIKit

class PartialScrollView: UIScrollView {
    var scrollArea: CGRect?
    var enableGlobalScroll = false

    override func hitTest(point: CGPoint, withEvent event: UIEvent?) -> UIView? {
        let relativePoint = superview!.convertPoint(point, fromView: self)
        let relativeArea = superview!.convertRect((scrollArea ?? self.bounds), fromView: self)
        if !enableGlobalScroll && !relativeArea.contains(relativePoint) {
            return nil
        }
        return super.hitTest(point, withEvent: event)
    }

}
