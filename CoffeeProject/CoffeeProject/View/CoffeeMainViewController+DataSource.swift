
import UIKit

extension CoffeeMainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return controller.coffee?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCellCoffeeItens
        cell?.cellItens(object: controller.coffee?[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    
}
