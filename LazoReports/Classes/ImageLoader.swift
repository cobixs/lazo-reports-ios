//
//  ImageLoader.swift
//  LazoReports
//
//  Created by Segundo Fariña on 10/09/2020.
//

import Foundation

enum ImageName: String {
    case activities = "activities"
    case coins = "coins"
    case company = "company"
    case continueArrow = "continue"
    case farmer = "farmer"
    case home = "home"
    case tractor = "tractor"
    case wheat2 = "wheat-2"
    case wheat = "wheat"
}

class ImageLoader {
    public func loadImage(name: ImageName) -> UIImage? {
        let mainBundle = Bundle(for: type(of: self))
        if let bundlePath = mainBundle.resourceURL?.appendingPathComponent("LazoReportsResources.bundle"), let resourcesBundle = Bundle(url: bundlePath) {
            let image = UIImage(named: name.rawValue, in: resourcesBundle, compatibleWith: nil)
                   return image
            }
        return nil
    }
}
