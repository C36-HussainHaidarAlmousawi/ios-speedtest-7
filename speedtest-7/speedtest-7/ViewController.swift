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
            if text.count <= 2 {
                let alert = UIAlertController(title: "لا تستعبط", message: "اكتب اسمك عدل", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "انشالله", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
        }
    }

}

