//
//  SaunaTableViewCell.swift
//  SampleTableView
//
//  Created by Kumie Miyata on 2021/12/10.
//

import UIKit

protocol SaunaTableViewCellDelegate {
    func didTapButton()
}

final class SaunaTableViewCell: UITableViewCell {
    
    var locationBlock: (() -> Void)?
    
    var delegate: SaunaTableViewCellDelegate?
    
    var setSaunaName = "" {
        didSet {
            saunaNameLabel.text = setSaunaName
        }
    }
    
    var isHiddenCrown = true {
        didSet {
            crownImageView.isHidden = isHiddenCrown
        }
    }
    
    override func prepareForReuse() {
        crownImageView.isHidden = true
    }
    
    @IBOutlet private weak var saunaImageView: UIImageView!
    @IBOutlet private weak var saunaNameLabel: UILabel!
    @IBOutlet private weak var locationButton: UIButton!
    @IBOutlet private weak var crownImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        crownImageView.isHidden = true
    }
    
    @IBAction func didTapLocationButton(_ sender: UIButton) {
        delegate?.didTapButton()
    }
}
