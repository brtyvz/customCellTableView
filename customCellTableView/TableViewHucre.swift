//
//  TableViewHucre.swift
//  customCellTableView
//
//  Created by Berat Yavuz on 15.12.2021.
//

import UIKit
protocol TableViewHucreProtocol {
    func hucreIcindekiButonTiklandi(indexPath:IndexPath) 
}
class TableViewHucre: UITableViewCell {
    @IBOutlet weak var kisiAdiLabel: UILabel!
    var hucreProtokol:TableViewHucreProtocol?
    var indexPath:IndexPath?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func buttonTikla(_ sender: Any) {
        hucreProtokol?.hucreIcindekiButonTiklandi(indexPath: indexPath!)
    }
}
