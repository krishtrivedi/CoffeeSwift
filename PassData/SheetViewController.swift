//
//  SheetViewController.swift
//  PassData
//
//  Created by Krishna on 12/17/21.
//  Copyright © 2021 Krishna. All rights reserved.
//

import UIKit

class SheetViewController: UIViewController {

    var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        label = UILabel(frame: CGRect(x: 100, y: 200, width: 220, height: 50))
        label.text = "Welcome to my app!";
        view.addSubview(label)
      
    }
    
    
}
