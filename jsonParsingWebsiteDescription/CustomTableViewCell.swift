//
//  CustomTableViewCell.swift
//  jsonParsingWebsiteDescription
//
//  Created by sdmgap3 on 1/28/20.
//  Copyright © 2020 Macbook. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var countryLbl: UILabel!
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
