//
//  FruitsView.swift
//
//

import UIKit

class FruitsViewController: UIViewController {
    
    @IBOutlet weak var fruitsTableView: UITableView!
    
    var presenter:FruitsPresenterInterface?
    var fruits:[Fruit] = []
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
}

extension FruitsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = fruitsTableView.dequeueReusableCell(withIdentifier: "fruitCell", for: indexPath)
        let fruit = self.fruits[indexPath.row]
        cell.textLabel?.text = fruit.name
        cell.detailTextLabel?.text = fruit.vitamin
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.fruits.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        presenter?.showDetails(for: self.fruits[indexPath.row])
    }
}

extension FruitsViewController : FruitsViewInterface {
    
    func showFruits(for fruits: [Fruit]) {
        
        self.fruits = fruits
        fruitsTableView.reloadData()
    }
}

