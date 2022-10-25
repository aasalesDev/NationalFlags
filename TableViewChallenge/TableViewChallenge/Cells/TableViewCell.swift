//
//  TableViewCell.swift
//  TableViewChallenge
//
//  Created by Anderson Sales on 25/10/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var flagsImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
