//
//  FruitListPresenter.swift
//
//

class FruitsPresenter: FruitsPresenterInterface {
 
    // Reference to the view (weak to avoid retain cycle).
    weak var view: FruitsViewInterface?
    // Reference to the interactor interface.
    var interactor: FruitsInteractorInput?
    // Reference to the router.
    var router: FruitsRouter?
    // Array to hold fruit feeds
    var fruits = [Fruit]()
    
    func viewDidLoad() {
        
        interactor?.fetchFruits()
    }
    
    func showDetails(for fruit:Fruit) {
        
        router?.presentDetails(for: fruit)
    }
}

// Interactor sends command to the Presenter once task completes.
// Presenter sends command to the View
extension FruitsPresenter: FruitsInteractorOutput {

    func fruitsDidFetch(fruits: [Fruit]) {
        
        view?.showFruits(for: fruits)
    }
}
