//
//  EditorsCollectionViewCell1.swift
//  hufs_eat
//
//  Created by 이정엽 on 2021/03/20.
//

import UIKit

class EditorsCollectionViewCell1: UICollectionViewCell {
    
    // MARK: - IBOutlets
    @IBOutlet weak var editorNameLabel: UILabel!
    @IBOutlet weak var editorImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override var isSelected: Bool {
        didSet {
            if isSelected {
                print(1)
            }else {
                print(2)
            }
        }
    }
    
    func parseData(_ name: String, _ image: UIImage) {
        editorNameLabel.text = name
        editorImageView.image = image
        
    }
}
