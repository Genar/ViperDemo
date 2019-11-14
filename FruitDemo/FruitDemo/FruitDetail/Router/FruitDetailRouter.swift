//
//  FruitDetailRouter.swift
//
//

import UIKit

class FruitDetailRouter: FruitDetailRouterInput {
    
    class func assembleModule(_ fruit: Fruit) -> UIViewController {
        
        if let fruitDetailViewCtrl = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(withIdentifier: "FruitDetailViewController") as?
            FruitDetailViewController {
        
            //let fruitDetailViewCtrl = FruitDetailViewController()
            // interactor: This module does not need interactor
            let presenter = FruitDetailPresenter()
        
            fruitDetailViewCtrl.presenter = presenter
            presenter.view = fruitDetailViewCtrl
            presenter.fruit = fruit
        
            return fruitDetailViewCtrl
        } else {
            return UIViewController()
        }
    }
}
