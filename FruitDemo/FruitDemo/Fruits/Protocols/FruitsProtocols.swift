////
////  FruitListProtocols.swift
////
////

import UIKit

// Protocol that defines the view input methods.
protocol FruitsViewInterface : class {
    
    func showFruits(for fruits: [Fruit])
}

protocol FruitsPresenterInterface : class {
    
    var router: FruitsRouter? {get set}
    var interactor: FruitsInteractorInput? {get set}
    var view: FruitsViewInterface? {get set}
    
    func viewDidLoad()
    func showDetails(for fruit:Fruit)
}

// Protocol that defines the interactor's use case.
protocol FruitsInteractorInput : class {
    
    var output:FruitsInteractorOutput? {get set}
    func fetchFruits()
}

// Protocol that defines the commands sent from the interactor to the presenter.
protocol FruitsInteractorOutput : class {
    
    func fruitsDidFetch(fruits:[Fruit])
}

protocol FruitsRouterInput : class {
    
    // Protocol that defines the possible routes from the Fruits module.
    var viewController : UIViewController? {get set}
    func presentDetails(for: Fruit)
    static func assembleModule() -> UIViewController
}

protocol Router: class {
    
    func presentFruitScreen(in window:UIWindow)
}
