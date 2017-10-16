//
//  UIImageExt.swift
//  TakeMyMeds
//
//  Created by Chad Moyer on 10/13/17.
//  Copyright © 2017 Chad Moyer. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {
    class func getImageWithColor(color: UIColor, size: CGSize) -> UIImage {
        let rect = CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: size.width, height: size.height))
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        color.setFill()
        UIRectFill(rect)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }
    
}
