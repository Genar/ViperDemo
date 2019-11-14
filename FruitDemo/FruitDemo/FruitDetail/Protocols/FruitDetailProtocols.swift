////
////  FruitDetailProtocols.swift
////
////

import UIKit

// Protocol that defines the fruit detail view input modes
protocol FruitDetailViewInterface : class {
    
    var presenter: FruitDetailPresenter? {get set}
    func showDetail(for fruit:Fruit)
}

// Protocol that defines the commands sent from the View to the Presenter.
protocol FruitDetailPresenterInterface : class {
    
    var view: FruitDetailViewInterface? {get set}
    func viewDidLoad()
}

// Protocol that defines the possible routes from the FruitDetail module.
protocol FruitDetailRouterInput : class {
    
    static func assembleModule(_ fruit: Fruit) -> UIViewController
}

