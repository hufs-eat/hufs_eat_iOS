//
//  EditorsCollectionViewCell2.swift
//  hufs_eat
//
//  Created by 이정엽 on 2021/03/20.
//

import UIKit

class EditorsCollectionViewCell2: UICollectionViewCell {

    @IBOutlet weak var editorImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    private func parseData(_ name: String, _ image: UIImage) {
        self.nameLabel.text = name
        self.editorImageView.image = image
    }
}
