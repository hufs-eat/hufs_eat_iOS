//
//  EditorsViewController.swift
//  hufs_eat
//
//  Created by 이정엽 on 2021/03/17.
//

import UIKit

class EditorsViewController: UIViewController {
    
    let editorName: [String] = ["JI", "TAK", "JUNE", "CHACHA", "PAK"]
    let editorImage: [UIImage] = [Constants.Image.ji,
                            Constants.Image.tak,
                            Constants.Image.june,
                            Constants.Image.chacha,
                            Constants.Image.pak]
    
    //MARK: - IBOutlets
    @IBOutlet weak var editorsCollectionView: UICollectionView!
    @IBOutlet weak var editorsDetailCollectionView: UICollectionView!
    @IBOutlet weak var circleLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var circleSuperView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionViewDelegateDatasource()
        self.registerCollectionViewCell()
    }
    
    private func registerCollectionViewCell() {
        self.editorsCollectionView.register(UINib(nibName: Constants.Cell.editorsCollectionViewCell1, bundle: nil), forCellWithReuseIdentifier: Constants.Cell.editorsCollectionViewCell1)
        self.editorsCollectionView.register(UINib(nibName: Constants.Cell.editorsCollectionViewCell2, bundle: nil), forCellWithReuseIdentifier: Constants.Cell.editorsCollectionViewCell2)
        self.editorsDetailCollectionView.register(UINib(nibName: Constants.Cell.editorsDetailCollectionViewCell, bundle: nil), forCellWithReuseIdentifier: Constants.Cell.editorsDetailCollectionViewCell)
    }
    
    private func collectionViewDelegateDatasource() {
        self.editorsDetailCollectionView.delegate = self
        self.editorsDetailCollectionView.dataSource = self
        self.editorsCollectionView.delegate = self
        self.editorsCollectionView.dataSource = self
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
                cell.parseData(editorName[indexPath.item], editorImage[indexPath.item])
                return cell
            } else {
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.Cell.editorsCollectionViewCell2, for: indexPath) as? EditorsCollectionViewCell2 else {
                    return UICollectionViewCell()
                }
                cell.parseData(editorName[indexPath.item], editorImage[indexPath.item])
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
            print(collectionView.frame.height)
            
            return CGSize(width: collectionView.frame.width/5, height: 140)
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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let width = collectionView.frame.width/5
        UIView.animate(withDuration: 0.25){ () in
            self.circleLeadingConstraint.constant = (width * CGFloat(indexPath.item)) + width/2 - 7
//            self.circleImageView.layoutIfNeeded()
            self.circleSuperView.layoutIfNeeded()
        }
    }
    
}

