//
//  EditorsViewController.swift
//  hufs_eat
//
//  Created by 이정엽 on 2021/03/17.
//

import UIKit

class EditorsViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var editorsCollectionView: UICollectionView!
    @IBOutlet weak var editorsDetailCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.editorsCollectionView.register(UINib(nibName: Constants.Cell.editorsCollectionViewCell1, bundle: nil), forCellWithReuseIdentifier: Constants.Cell.editorsCollectionViewCell1)
        self.editorsCollectionView.register(UINib(nibName: Constants.Cell.editorsCollectionViewCell2, bundle: nil), forCellWithReuseIdentifier: Constants.Cell.editorsCollectionViewCell2)
        self.editorsCollectionView.delegate = self
        self.editorsCollectionView.dataSource = self
        self.editorsDetailCollectionView.register(UINib(nibName: Constants.Cell.editorsDetailCollectionViewCell, bundle: nil), forCellWithReuseIdentifier: Constants.Cell.editorsDetailCollectionViewCell)
        self.editorsDetailCollectionView.delegate = self
        self.editorsDetailCollectionView.dataSource = self
    }
}

extension EditorsViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.editorsCollectionView {
            return 5
        }
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.editorsCollectionView {
            if indexPath.item % 2 == 0 {
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.Cell.editorsCollectionViewCell1, for: indexPath) as? EditorsCollectionViewCell1 else {
                    return UICollectionViewCell()
                }
                return cell
                
            } else {
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.Cell.editorsCollectionViewCell2, for: indexPath) as? EditorsCollectionViewCell2 else {
                    return UICollectionViewCell()
                }
                return cell
            }
        } else {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.Cell.editorsDetailCollectionViewCell, for: indexPath) as? EditorsDetailCollectionViewCell else {
                return UICollectionViewCell()
            }
            return cell
        }
    }
    
    
}

extension EditorsViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.editorsCollectionView {
            return CGSize(width: (collectionView.frame.width - 32)/5, height: 150)
        } else {
            return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
}

