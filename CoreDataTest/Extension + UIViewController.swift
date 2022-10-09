//
//  Extension + UIViewController.swift
//  CoreDataTest
//
//  Created by Nikkru on 09.10.2022.
//

import UIKit

extension UIViewController {
    
    func createCustomNavigationBar() {
        navigationController?.navigationBar.barTintColor = view.backgroundColor?.withAlphaComponent(0.5)
    }
    
    func createCustomTitleView(contactName: String, contactNumber: String, contactImage: String) -> UIView {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 280, height: 41)
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: contactImage)
        imageView.layer.cornerRadius = imageView.frame.height / 2
        imageView.frame = CGRect(x: 5, y: 0, width: 40, height: 40)
        view.addSubview(imageView)
        
        let nameLabel = UILabel()
        nameLabel.text = contactName
        nameLabel.frame = CGRect(x: 55, y: 0, width: 220, height: 20)
        nameLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(nameLabel)
        
        let numberLabel = UILabel()
        numberLabel.text = contactNumber
        numberLabel.frame = CGRect(x: 55, y: 21, width: 220, height: 20)
        numberLabel.font = UIFont.systemFont(ofSize: 20)
        numberLabel.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        view.addSubview(numberLabel)
        
        return view
    }
    
    func crteateCustomButton(imageName: String, selector: Selector) -> UIBarButtonItem {
        let button = UIButton(type: .system)
        button.setImage(
            UIImage(systemName: imageName)?.withRenderingMode(.alwaysTemplate),
            for: .normal
        )
        button.tintColor = .systemBlue
        button.imageView?.contentMode = .scaleAspectFit
        button.contentVerticalAlignment = .fill
        button.contentHorizontalAlignment = .fill
        button.addTarget(self, action: selector, for: .touchUpInside)
        
        let menuBarItem = UIBarButtonItem(customView: button)
        
        return menuBarItem
    }
}
