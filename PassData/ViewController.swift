//
//  ViewController.swift
//  PassData
//
//  Created by Krishna on
//12/14/21.
//  Copyright © 2021 Krishna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
      }
    @IBAction func didTapButton(){
        let vc = storyboard?.instantiateViewController(withIdentifier: "other") as! OrderViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc,animated: true)
        
    }

   
}

