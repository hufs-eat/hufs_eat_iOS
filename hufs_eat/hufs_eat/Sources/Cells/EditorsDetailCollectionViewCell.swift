//
//  EditorsDetailCollectionViewCell.swift
//  hufs_eat
//
//  Created by 이정엽 on 2021/03/20.
//

import UIKit

class EditorsDetailCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var EditorsRecommendCollectionView: UICollectionView!
    
    var dataArray = [""]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.EditorsRecommendCollectionView.register(UINib(nibName: Constants.Cell.editorsRecommendCollectionViewCell, bundle: nil), forCellWithReuseIdentifier: Constants.Cell.editorsRecommendCollectionViewCell)
        self.EditorsRecommendCollectionView.delegate = self
        self.EditorsRecommendCollectionView.dataSource = self
        // Initialization code
    }

}

extension EditorsDetailCollectionViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return dataArray.count
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.Cell.editorsRecommendCollectionViewCell, for: indexPath) as? EditorsRecommendCollectionViewCell else {
            return UICollectionViewCell()
        }
        return cell
    }
    
    
}

extension EditorsDetailCollectionViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: self.frame.width, height: 120)
    }
}
