//
//  HomeTableViewCell.swift
//  Reserva
//
//  Created by Joe Wong on 2/8/20.
//  Copyright © 2020 Pascal Inc. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var homeImageView: UIImageView!
    @IBOutlet weak var homeEventName: UILabel!
    @IBOutlet weak var homeEventType: UILabel!
    @IBOutlet weak var homeEventDate: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
