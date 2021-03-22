//
//  File.swift
//  hufs_eat
//
//  Created by 이정엽 on 2021/03/17.
//

import Foundation
import UIKit

struct Constants {
    
    struct Identifier {
        static let editorsViewController: String = "EditorsViewController"
        static let firstViewController: String = "FirstViewController"
        static let secondViewController: String = "SecondViewController"
        static let thirdViewController: String = "ThirdViewController"
        static let fourthViewController: String = "FourthViewController"
        static let fifthViewController: String = "FifthViewController"

    }
    
    struct Cell {
        static let editorsCollectionViewCell1: String = "EditorsCollectionViewCell1"
        static let editorsCollectionViewCell2: String = "EditorsCollectionViewCell2"
        static let editorsRecommendCollectionViewCell: String = "EditorsRecommendCollectionViewCell"
        static let editorsDetailCollectionViewCell: String = "EditorsDetailCollectionViewCell"
    }
    
    struct Header {
        static let editorsHeader: String = "editorHeader"
    }
    
    
    struct Image {
        // editors
        static let chacha: UIImage = UIImage(named: "chacha")!
        static let ji: UIImage = UIImage(named: "ji")!
        static let june: UIImage = UIImage(named: "june")!
        static let pak: UIImage = UIImage(named: "pak")!
        static let tak: UIImage = UIImage(named: "tak")!
        
        static let editors_cursor: UIImage = UIImage(named: "editors_cursor")!
    }
}
