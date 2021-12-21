//
//  PreviousOrderController.swift
//  PassData
//
//  Created by Krishna on 12/17/21.
//  Copyright © 2021 Krishna. All rights reserved.
//

import UIKit
import Foundation

class PreviousOrderController: UIViewController {
    
    @IBOutlet weak var Label5: UILabel!
    
    @IBOutlet weak var Label6: UILabel!
    @IBOutlet weak var Label4: UILabel!
    @IBOutlet weak var Label3: UILabel!
    @IBOutlet weak var Label1: UILabel!
    @IBOutlet weak var Label2: UILabel!
    var ViewStruct=""
    override func viewDidLoad() {
    super.viewDidLoad()
    Label1.text = "Order For " + OrderViewController.GlobalVariable1.myString1

    for i in (0..<SecondViewController.GlobalVariable.myStruct.count) {
          //  print(SecondViewController.GlobalVariable.myStruct.count)
          //  print(SecondViewController.GlobalVariable.myStruct[i]);
            ViewStruct += " " + SecondViewController.GlobalVariable.myStruct[i] as String
          //  print(ViewStruct)
        }
        
    if Label2.text=="Label"{
            Label2.text=OrderViewController.FinalGlobalVariable.FinalStruct[1]
        //dismiss(animated: true, completion: nil)
        }
    
    if OrderViewController.FinalGlobalVariable.FinalStruct.count==3 && Label4.text=="Label"
    {
       // print(OrderViewController.FinalGlobalVariable.FinalStruct[2])
        Label4.text=OrderViewController.FinalGlobalVariable.FinalStruct[2]
        }
        
//    Label2.text = ViewStruct;
    Label3.text = "Order For " + OrderViewController.GlobalVariable1.myString1
}
}

    
    
    
        
    
    
    

