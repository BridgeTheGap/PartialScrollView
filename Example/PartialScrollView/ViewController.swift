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
        
        let tableView = UITableView(frame: self.view.bounds)
        tableView.frame.origin.x = self.view.bounds.width
        tableView.backgroundColor = UIColor(white: 0.9, alpha: 1.0)
        
        scrollView.contentSize = CGSizeMake(self.view.bounds.width * 2.0, self.view.bounds.height)
        scrollView.addSubview(tableView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Scroll view
    
    
    
}

