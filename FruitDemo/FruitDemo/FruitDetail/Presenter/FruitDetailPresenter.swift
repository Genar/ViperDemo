//
//  FruitDetailPresenter.swift
//
//

class FruitDetailPresenter: FruitDetailPresenterInterface {
    
    weak var view: FruitDetailViewInterface?
    var fruit: Fruit!
    
    func viewDidLoad() {
        
        view?.showDetail(for: fruit)
    }
}
