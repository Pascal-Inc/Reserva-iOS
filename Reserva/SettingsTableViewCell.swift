//
//  SettingsTableViewCell.swift
//  Reserva
//
//  Created by Joe Wong on 14/8/20.
//  Copyright © 2020 Pascal Inc. All rights reserved.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {

    @IBOutlet weak var settingDetail: UILabel!
    @IBOutlet weak var settingName: UILabel!
    @IBOutlet weak var settingImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
