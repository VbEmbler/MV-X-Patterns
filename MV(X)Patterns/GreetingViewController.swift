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
    
    private var viewModel: GreetingViewModelProtocol! {
        didSet {
            viewModel.greetingDidChange = { [unowned self] viewModel in
                self.greetingLabel.text = viewModel.greeting
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let person = Person(name: "Tim", surname: "Cook")
        viewModel = GreetingViewModel(person: person)
    }

    @IBAction func showGreetingPresed() {
        viewModel.showGreeting()
    }
}

