//
//  UIViewController+Utils.swift
//  Bankey
//
//  Created by Taiki on 4/01/6.
//

import UIKit

extension UIViewController {
    func setStatusBar() {
//        let statusBarSize = UIApplication.shared.statusBarFrame.size
        let statusBarSize =
        view.window?.windowScene?.statusBarManager?.statusBarFrame.size ?? CGSize(width: 0, height: 0)
        let frame = CGRect(origin: .zero, size: statusBarSize)
        let statusbarView = UIView(frame: frame)
        
        statusbarView.backgroundColor = appColor
        view.addSubview(statusbarView)
    }
    
    func setTabBarImage(imageName: String, title: String) {
        let configuration = UIImage.SymbolConfiguration(scale: .large)
        let image = UIImage(systemName: imageName, withConfiguration: configuration)
        tabBarItem = UITabBarItem(title: title, image: image, tag: 0)
    }
}

