//
//  FruitDetailViewController.swift
//
//

import UIKit

// A detail view is responsible for displaying the detail of the fruit
class FruitDetailViewController: UIViewController, FruitDetailViewInterface {

    @IBOutlet var fruitImage: UIImageView!
    @IBOutlet var fruitNameLbl: UILabel!
    @IBOutlet var vitaminLbl: UILabel!
    
    var presenter: FruitDetailPresenter?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }

    func showDetail(for fruit: Fruit) {
        
        title = fruit.name
        fruitImage.image = UIImage(named: fruit.name)
        fruitNameLbl.text = fruit.name
        vitaminLbl.text = fruit.vitamin
    }
}
