//
//  SearchTableViewCell.swift
//  Reserva
//
//  Created by Joe Wong on 28/7/20.
//  Copyright © 2020 Pascal Inc. All rights reserved.
//

import UIKit

class SearchTableViewCell: UITableViewCell {

    @IBOutlet weak var searchImageView: UIImageView!
    @IBOutlet weak var searchEventName: UILabel!
    @IBOutlet weak var searchEventType: UILabel!
    @IBOutlet weak var searchEventDate: UILabel!
    @IBOutlet weak var searchEventDescription: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
