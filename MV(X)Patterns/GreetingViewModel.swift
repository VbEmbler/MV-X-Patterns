//
//  GreetingViewModel.swift
//  MV(X)Patterns
//
//  Created by Vladimir on 31/03/2021.
//  Copyright © 2021 Embler. All rights reserved.
//

import Foundation

protocol GreetingViewModelProtocol: class {
    var greeting: String? { get }
    var greetingDidChange: ((GreetingViewModelProtocol) -> Void)?  { get set }
    init(person: Person)
    func showGreeting()
}

class GreetingViewModel: GreetingViewModelProtocol {
    var greeting: String? {
        didSet {
            greetingDidChange?(self)
        }
    }
    
    var greetingDidChange: ((GreetingViewModelProtocol) -> Void)?
    
    private let person: Person
    
    required init(person: Person) {
        self.person = person
    }
    
    func showGreeting() {
        greeting = "Hello, \(person.name) \(person.surname)!"
    }
}
