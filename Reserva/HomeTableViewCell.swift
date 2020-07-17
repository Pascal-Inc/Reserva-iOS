//
//  HomeTableViewCell.swift
//  Reserva
//
//  Created by Joe Wong on 17/7/20.
//  Copyright © 2020 Pascal Inc. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var homeCellImage: UIImageView!
    @IBOutlet weak var homeCellEventType: UILabel!
    @IBOutlet weak var homeCellEventName: UILabel!
    @IBOutlet weak var homeCellEventDate: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
