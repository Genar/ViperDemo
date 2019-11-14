//
//  FruitListRouter.swift
//
//

import UIKit

class RootRouter: Router {
    
    func presentFruitScreen(in window: UIWindow) {
        
        window.makeKeyAndVisible()
        window.rootViewController = FruitsRouter.assembleModule()
    }
    
}

// The router is responsible for the navigation between modules.
class FruitsRouter: NSObject, FruitsRouterInput {
    
    weak var viewController: UIViewController?
    
    func presentDetails(for fruit: Fruit) {
        // Assemble the Router for the upcoming module with fruit data to present to the next View.
        let detailViewController = FruitDetailRouter.assembleModule(fruit)
        viewController?.navigationController?.pushViewController(detailViewController, animated:true)
    }
    
    static func assembleModule() -> UIViewController {
        
        if let fruitsViewCtrl = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FruitsViewController") as? FruitsViewController {
        
            //let fruitsViewCtrl = FruitsViewController()
            let interactor = FruitsInteractor()
            let presenter = FruitsPresenter()
            let router = FruitsRouter()
            let navigation = UINavigationController(rootViewController: fruitsViewCtrl)
        
            fruitsViewCtrl.presenter = presenter
            presenter.view = fruitsViewCtrl
            presenter.interactor = interactor
            presenter.router = router
            interactor.output = presenter
            router.viewController = fruitsViewCtrl
            
            return navigation
        } else {
            return UIViewController()
        }
    }
}
