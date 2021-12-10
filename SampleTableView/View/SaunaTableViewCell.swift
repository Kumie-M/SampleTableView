//
//  SaunaTableViewCell.swift
//  SampleTableView
//
//  Created by Kumie Miyata on 2021/12/10.
//

import UIKit

class SaunaTableViewCell: UITableViewCell {
    
    @IBOutlet weak var saunaImageView: UIImageView!
    @IBOutlet weak var saunaNameLabel: UILabel!
    @IBOutlet weak var locationButton: UIButton!
    @IBOutlet weak var crownImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
