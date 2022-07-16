//
//  TableViewCellCoffeeItens.swift
//  CoffeeProject
//
//  Created by Rodrigo Garcia on 25/04/1401 AP.
//

import UIKit
import SDWebImage

class TableViewCellCoffeeItens: UITableViewCell {

    @IBOutlet var imageCoffee: UIImageView!
    @IBOutlet var labelCoffee: UILabel!
    @IBOutlet var descriptionCoffee: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
 
    func cellItens(object: CoffeeIcedElement?) {
        let urlImage = URL(string: object?.image ?? "")
        imageCoffee.sd_setImage(with: urlImage)
        labelCoffee.text = object?.title ?? ""
        descriptionCoffee.text = object?.coffeeIcedDescription ?? ""
    }
    
}
