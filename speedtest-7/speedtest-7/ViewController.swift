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
    var text = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func Button(_ sender: Any) {
        self.text = Field.text ?? "meow"
        performSegue(withIdentifier: "name", sender: self)
    }
    // Hint: `performSegue` is the way
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "name" {
            var vc = segue.destination as! nameViewController
            vc.fullName = self.text
        }
    }

}

