//
//  ViewController.swift
//  PartialScrollView
//
//  Created by Joshua Park on 06/14/2016.
//  Copyright (c) 2016 Joshua Park. All rights reserved.
//

import UIKit
import PartialScrollView

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var handleView: UIView!
    @IBOutlet weak var scrollView: PartialScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let effect = UIBlurEffect(style: .Dark)
        let blurView = UIVisualEffectView(effect: effect)
        blurView.frame = self.view.frame
        blurView.frame.origin.x = self.view.frame.width
        
        scrollView.contentSize = CGSizeMake(self.view.bounds.width * 2.0, self.view.bounds.height)
        scrollView.addSubview(blurView)
        scrollView.scrollableView = handleView
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Scroll view
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        self.scrollView.enableGlobalScroll = scrollView.contentOffset.x >= self.view.frame.width
    }
    
}

