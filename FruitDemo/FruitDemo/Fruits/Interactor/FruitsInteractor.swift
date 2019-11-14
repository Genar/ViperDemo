//
//  FruitListInteractor.swift
//
//

// The interactor responsible for implementing the business logic of the module.
class FruitsInteractor: FruitsInteractorInput {
    
    // Reference to the presenter's output interface
    weak var output: FruitsInteractorOutput?
    
    func fetchFruits() {
        
        let fruits = getAllFruitDetail()
        self.output?.fruitsDidFetch(fruits: fruits)
    }
    
    fileprivate func getAllFruitDetail() -> [Fruit] {
        
        var fruitList = [Fruit]()
        let allFruitDetail = DummyFruits.generateDataList()
        for item in allFruitDetail {
            fruitList.append(Fruit(attributes: item))
        }
        return fruitList
    }
}
