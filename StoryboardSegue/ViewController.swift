//
//  ViewController.swift
//  StoryboardSegue
//
//  Created by Michael Miles on 2/14/20.
//  Copyright © 2020 Michael Miles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segueTextField: UITextField!

    @IBAction func segueButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "goToAlternateStoryboard", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToAlternateStoryboard" {
            guard let vc = segue.destination as? AlternateViewController else { return }
            vc.segueText = segueTextField.text
        }
    }
    
}

