//
//  OrderPlaceController.swift
//  PassData
//
//  Created by Krishna on 12/16/21.
//  Copyright © 2021 Krishna. All rights reserved.
//

import UIKit

class OrderPlaceController: UITableViewController {
    
    let options: [String] = ["Coffee","Water","Latte","Smoothie","Tea"]
    let titleOfOptions = "Choose your favorite"
    
    
    var isCompleted:((_ selectedOption:String)->() )?=nil
    func didSelectedOption(completed:@escaping(_ selectedOption:String)->Void )
    {
        self.isCompleted=completed
    }
        override func viewDidLoad() {
            super.viewDidLoad()
            
        }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section:Int)->Int {
        return options.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)->UITableViewCell {
        let cell=UITableViewCell(style: .default, reuseIdentifier: nil)
        
        cell.textLabel?.text=options[indexPath.row]
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let completed = isCompleted{
            completed(options[indexPath.row])
        }
    }
}



