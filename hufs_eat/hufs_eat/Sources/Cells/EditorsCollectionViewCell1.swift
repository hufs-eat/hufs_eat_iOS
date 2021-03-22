//
//  EditorsCollectionViewCell1.swift
//  hufs_eat
//
//  Created by 이정엽 on 2021/03/20.
//

import UIKit

class EditorsCollectionViewCell1: UICollectionViewCell {
    
    var designated: Bool = false
    
    // MARK: - IBOutlets
    @IBOutlet weak var editorNameLabel: UILabel!
    @IBOutlet weak var editorImageView: UIImageView!
    @IBOutlet weak var labelTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var superView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override var isSelected: Bool {
        didSet {
            if isSelected && !designated{
                designated.toggle()
                UIView.animate(withDuration: 0.1) {
                    self.labelTopConstraint.constant += 30
                    self.superView.layoutIfNeeded()
                }
            } else if !isSelected && designated {
                designated.toggle()
                UIView.animate(withDuration: 0.1) {
                    self.labelTopConstraint.constant -= 30
                    self.superView.layoutIfNeeded()
                }
            }
        }
    }
    
    func parseData(_ name: String, _ image: UIImage) {
        editorNameLabel.text = name
        editorImageView.image = image
        
    }
}
