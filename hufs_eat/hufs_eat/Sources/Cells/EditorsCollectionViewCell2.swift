//
//  EditorsCollectionViewCell2.swift
//  hufs_eat
//
//  Created by 이정엽 on 2021/03/20.
//

import UIKit

class EditorsCollectionViewCell2: UICollectionViewCell {

    @IBOutlet weak var superView: UIView!
    @IBOutlet weak var editorImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var labelTopConstraint: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override var isSelected: Bool {
        didSet {
            if isSelected {
                UIView.animate(withDuration: 0.1) {
                    self.labelTopConstraint.constant += 30
                    self.superView.layoutIfNeeded()
                }
            } else {
                UIView.animate(withDuration: 0.1) {
                    self.labelTopConstraint.constant -= 30
                    self.superView.layoutIfNeeded()
                }
            }
        }
    }
    
    func parseData(_ name: String, _ image: UIImage) {
        self.nameLabel.text = name
        self.editorImageView.image = image
    }
}
