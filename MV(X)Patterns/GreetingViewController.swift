//
//  ViewController.swift
//  MV(X)Patterns
//
//  Created by Vladimir on 31/03/2021.
//  Copyright © 2021 Embler. All rights reserved.
//

import UIKit

class GreetingViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    
    private var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        person = Person(name: "Tim", surname: "Cook")
    }

    @IBAction func showGreetingPresed() {
        greetingLabel.text = "Hello \(person.name) \(person.surname)!"
    }
}

