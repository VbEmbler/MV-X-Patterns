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
    
    private var presenter: GreetingPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let person = Person(name: "Tim", surname: "Cook")
        presenter = GreetingPresenter(view: self, person: person)
    }

    @IBAction func showGreetingPresed() {
        presenter.showGreeting()
    }
}

protocol GreetingViewProtocol: class {
    func setGreeting(_ greeting: String)
}

extension GreetingViewController: GreetingViewProtocol {
    func setGreeting(_ greeting: String) {
        greetingLabel.text = greeting
    }
}
