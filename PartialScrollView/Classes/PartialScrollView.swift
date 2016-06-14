//
//  PartialScrollView.swift
//  TestBed
//
//  Created by Joshua Park on 16.06.13..
//  Copyright © 2016 Monetor. All rights reserved.
//

import UIKit

public class PartialScrollView: UIScrollView {
    public weak var scrollableView: UIView?
    public var scrollArea: CGRect?
    public var enableGlobalScroll = false
    
    override public func hitTest(point: CGPoint, withEvent event: UIEvent?) -> UIView? {
        if let scrollableView = scrollableView {
            scrollArea = convertRect(scrollableView.frame, fromView: scrollableView.superview)
        }
        let relativePoint = superview!.convertPoint(point, fromView: self)
        let relativeArea = superview!.convertRect((scrollArea ?? bounds), fromView: self)
        if !enableGlobalScroll && !relativeArea.contains(relativePoint) {
            return nil
        }
        return super.hitTest(point, withEvent: event)
    }
}
