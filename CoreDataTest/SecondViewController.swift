//
//  SecondViewController.swift
//  CoreDataTest
//
//  Created by Nikkru on 09.10.2022.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.7843137255, blue: 0.4274509804, alpha: 1)
        setupViews()
    }
    
    private func setupViews() {
        createCustomNavigationBar()
        let rightButton = crteateCustomButton(
            imageName: "phone",
            selector: #selector(rightButtonTapped)
        )
        let leftButton = crteateCustomButton(
            imageName: "video",
            selector: #selector(leftButtonTapped)
        )
        let customTitleView = createCustomTitleView(
            contactName: "CoreData",
            contactNumber: "+10978687453",
            contactImage: "SwiftLogo"
        )
        
        navigationItem.rightBarButtonItems = [rightButton, leftButton]
        navigationItem.titleView = customTitleView
    }
    
    @objc private func rightButtonTapped() {
        print("rightButtonTapped")
    }
    
    @objc private func leftButtonTapped() {
        print("leftButtonTapped")
    }
}
