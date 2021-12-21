//
//  SecondViewController.swift
//  PassData
//
//  Created by Krishna on 12/19/21.
//  Copyright © 2021 Krishna. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    //@IBOutlet var field:UITextField!
    //@IBOutlet var fieldwater:UITextField!
    //public var completionHandler:((String?)->Void)?
 //   public var completionHandler1:((String?)->Void)?
    
    @IBOutlet weak var field: UITextField!
   
    @IBOutlet weak var fieldwater: UITextField!
    
    @IBOutlet weak var fieldlatte: UITextField!
    
    @IBOutlet weak var fieldsmoothie: UITextField!
    
    @IBOutlet weak var fieldtea: UITextField!
    
//    @IBAction func save(_ sender: Any) {
//        print("Adding items")
//
//
//
//        GlobalVariable.myStruct.append(field.text!+"\n")
//        //GlobalVariable.myStruct.append("\n")
//        GlobalVariable.myStruct.append(fieldwater.text!+"\n")
//        GlobalVariable.myStruct.append(fieldlatte.text!+"\n")
//        GlobalVariable.myStruct.append(fieldsmoothie.text!+"\n")
//        GlobalVariable.myStruct.append(fieldtea.text!+"\n")
//        GlobalVariable.myString="Hello"
//        print(GlobalVariable.myStruct.count)
//        print("Saved")
//        print(GlobalVariable.myStruct)
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

//@IBAction func didTapSave(){
 //       completionHandler?(field.text)
  //      dismiss(animated: true, completion: nil)
   // }
  

  //  @IBAction func save(sender:AnyObject)
   // {
        
   // }
    struct GlobalVariable{
        static var myStruct = [String]();
        static var myString = String()
    }

@IBAction func didTapSave(){
      let vc = storyboard?.instantiateViewController(withIdentifier: "other") as! OrderViewController
       vc.modalPresentationStyle = .fullScreen
       print("Adding items")
    
           GlobalVariable.myStruct=[""]
    
            GlobalVariable.myStruct.append(field.text!+"\n")
            //GlobalVariable.myStruct.append("\n")
            GlobalVariable.myStruct.append(fieldwater.text!+"\n")
            GlobalVariable.myStruct.append(fieldlatte.text!+"\n")
            GlobalVariable.myStruct.append(fieldsmoothie.text!+"\n")
            GlobalVariable.myStruct.append(fieldtea.text!+"\n")
    
    
            GlobalVariable.myString="Hello"
          //  print(GlobalVariable.myStruct.count)
          //  print("Saved")
          //  print(GlobalVariable.myStruct)
    
    
    
    
     present(vc,animated: true)
    
     }
    
    
}
