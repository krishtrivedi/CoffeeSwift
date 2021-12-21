//
//  OrderViewController.swift
//  PassData
//
//  Created by Krishna on 12/15/21.
//  Copyright © 2021 Krishna. All rights reserved.
//

import UIKit
class OrderViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    var theStruct="";
    var aliasstruct = "";
   // public var display=""
    @IBOutlet var label : UILabel!
    
    struct GlobalVariable1{
        static var myString1 = String()
        static var myValue = String()
    }
    

  //  @IBOutlet weak var chooseBtton:UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        let date = Date()
        let formatter = DateFormatter()
        formatter.timeZone = .current
        formatter.locale = .current
        formatter.dateFormat = "MM/dd/yy"
        theStruct=""
        label.text=formatter.string(from: date)
        GlobalVariable1.myString1 = label.text!
        
       // display.append(label.text!)
        
        print("Starting for loop")
        for i in (0..<SecondViewController.GlobalVariable.myStruct.count) {
           // print(SecondViewController.GlobalVariable.myStruct.count)
           // print(SecondViewController.GlobalVariable.myStruct[i]);
            theStruct +=  SecondViewController.GlobalVariable.myStruct[i] as String
         //   print(theStruct)
        }
      
        
        //print("Exciting challenge")
        label1.text=theStruct;
    
        
        GlobalVariable1.myValue = theStruct
        
       // print(GlobalVariable1.myValue)
       // print(SecondViewController.GlobalVariable.myString);
       // presentSecondViewController()
   //     UIPresentationController.init(presentedViewController: <#T##UIViewController#>, presenting: //<#T##UIViewController?#>)
        //}
    
      

}
    @IBAction func didTapButton(){
        
        FinalGlobalVariable.FinalStruct.append(theStruct)
        if FinalGlobalVariable.FinalStruct.count == 3{
          //  print(FinalGlobalVariable.FinalStruct[2])
        }
        
   //     print(FinalGlobalVariable.FinalStruct)
        
        
     //   FinalGlobalVariable.FinalStruct.append(theStruct)
     //   print(FinalGlobalVariable.FinalStruct[0])
        let vc = storyboard?.instantiateViewController(withIdentifier: "view") as! PreviousOrderController
        vc.modalPresentationStyle = .fullScreen
        present(vc,animated: true)
    
       
    }
    
    struct FinalGlobalVariable {
    static var FinalStruct = [String()];
    }
    
    
    @IBAction func didTapAdd(){
        theStruct=""
        print(theStruct)
        let vc = storyboard?.instantiateViewController(withIdentifier: "second") as! SecondViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc,animated: true)
        
    }

}
