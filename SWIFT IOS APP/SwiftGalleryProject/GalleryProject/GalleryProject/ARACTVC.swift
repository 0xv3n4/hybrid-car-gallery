//
//  ARACTVC.swift
//  ValorantGaleriProjesi
//
//  Created by Boran Akova on 15.05.2020.
//  Copyright © 2020 Boran Akova. All rights reserved.
//

import UIKit

class ARACTVC: UITableViewCell {

    // Tablo arayüzünde gösterilen ve atanan verilerin tutulan etiketleri.

    
    @IBOutlet weak var marka: UILabel!
    
    @IBOutlet weak var model: UILabel!
    
    @IBOutlet weak var plaka: UILabel!
    @IBOutlet weak var tipi: UILabel!
    
    @IBOutlet weak var ytipi: UILabel!
    
    
    @IBOutlet weak var motorh: UILabel!
    
    
    @IBOutlet weak var kirasat: UILabel!
    
    @IBOutlet weak var fiyat: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
