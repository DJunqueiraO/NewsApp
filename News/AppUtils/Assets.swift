//
//  Create.swift
//  News
//
//  Created by Josicleison on 10/10/22.
//

import UIKit

struct Assets {
    
    struct Colors {
        
        static let reverseDark = UIColor(named: "reverseDark")
        static let lightBlue = UIColor(named: "lightBlue")
        static let dark = UIColor(named: "dark")
    }
    
    static let font = {(size: CGFloat) -> UIFont in
        
        UIFont.systemFont(ofSize: size, weight: .bold)
    }
    
    struct Images {
        
        static let right = UIImage(systemName: "chevron.right")
        static let left = UIImage(systemName: "chevron.left")
        
        static let eye = UIImage(systemName: "eye.fill")
        
        static let cloudSun = UIImage(systemName: "cloud.sun.fill")
        static let sunMax = UIImage(systemName: "sun.max.fill")
        static let cloudSunRain = UIImage(systemName: "cloud.sun.rain.fill")
        static let cloudSunBolt = UIImage(systemName: "cloud.sun.rain.fill")
        static let cloudDrizzle = UIImage(systemName: "cloud.drizzle.fill")
        static let cloud = UIImage(systemName: "cloud.fill")
        static let cloudHail = UIImage(systemName: "cloud.hail.fill")
        
        static let wheater_0 = UIImage(named: "Wheater_0")
        static let wheater_1 = UIImage(named: "Wheater_1")
        static let wheater_2 = UIImage(named: "Wheater_2")
        static let wheater_3 = UIImage(named: "Wheater_3")
        static let wheater_4 = UIImage(named: "Wheater_4")
    }
}
