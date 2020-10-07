//
//  ViewController.swift
//  speedtest-7
//
//  Created by Safeyah on 6/13/20.
//  Copyright © 2020 kuwaitcodes.cohort2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var Field: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func Button(_ sender: Any) {
        performSegue(withIdentifier: "name", sender: self)
    }
    // Hint: `performSegue` is the way
    

}

