//
//  UIView+Extension.swift
//  hufs_eat
//
//  Created by 이정엽 on 2021/03/17.
//

import UIKit

extension UIView {
    func round(corners: UIRectCorner, cornerRadius: Double) {
        let size = CGSize(width: cornerRadius, height: cornerRadius)
        let bezierPath = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: size)
        let shapeLayer = CAShapeLayer()
        shapeLayer.frame = self.bounds
        shapeLayer.path = bezierPath.cgPath
        self.layer.mask = shapeLayer
    }
    
    func addTopRoundedEdge(_ width: CGFloat,_ y: CGFloat) {
        let path = UIBezierPath()
        path.lineWidth = 3
        path.move(to: CGPoint(x: 0, y: y+30))
        path.addQuadCurve(to: CGPoint(x:width, y: y+30), controlPoint: CGPoint(x: width/2, y: y-30))
        path.flatness = 0.0

        let maskLayer: CAShapeLayer = CAShapeLayer()
        maskLayer.path = path.cgPath
        maskLayer.strokeColor = UIColor.black.cgColor
        maskLayer.fillColor = UIColor.clear.cgColor
        maskLayer.frame = self.bounds
        maskLayer.lineJoin = .round

        self.layer.addSublayer(maskLayer)
    }
}


