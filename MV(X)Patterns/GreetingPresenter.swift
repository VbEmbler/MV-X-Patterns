//
//  GreetingPresenter.swift
//  MV(X)Patterns
//
//  Created by Vladimir on 31/03/2021.
//  Copyright © 2021 Embler. All rights reserved.
//

import Foundation

protocol GreetingPresenterProtocol: class {
    
    init(view: GreetingViewProtocol, person: Person)
    
    func showGreeting()
}

class GreetingPresenter: GreetingPresenterProtocol {
    unowned private let view: GreetingViewProtocol
    private let person: Person
    
    required init(view: GreetingViewProtocol, person: Person) {
        self.view = view
        self.person = person
    }
    
    func showGreeting() {
        let greeting = "Hello \(person.name) \(person.surname)!"
        view.setGreeting(greeting)
    }
}
