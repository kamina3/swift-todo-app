//
//  DetailViewController.swift
//  ToDoListWithWeb
//
//  Created by kamina on 2015/01/21.
//  Copyright (c) 2015年 com.ash1taka. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController : UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var detailItem: ToDo? {
        didSet {
            // Update the view.
            self.configureView()
            println(detailItem)
        }
    }
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail: AnyObject = self.detailItem {
            if let label = self.label {
                label.text = detailItem?.text
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
        println("Detail View Did Loaded")
    }

}