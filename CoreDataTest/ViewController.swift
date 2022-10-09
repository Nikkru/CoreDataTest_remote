//
//  ViewController.swift
//  CoreDataTest
//
//  Created by Nikkru on 07.10.2022.
//

import UIKit

class ViewController: UIViewController {

    private let contactButton: UIButton = {
        let button = UIButton()
        button.setTitle("GoTo", for: .normal)
        button.setTitleColor(.systemYellow, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setConsraints()
        contactButton.addTarget(
            self,
            action: #selector(contactButtonTapped),
            for: .touchUpInside)
    }
    
    @objc private func contactButtonTapped() {
        let controller = SecondViewController()
        navigationController?.pushViewController(controller, animated: true)
    }

    private func setupViews() {
        view.backgroundColor = .systemBlue
        title = "Core Data"
        view.addSubview(contactButton)
    }
    
    private func setConsraints() {
        NSLayoutConstraint.activate([
            contactButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            contactButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            contactButton.heightAnchor.constraint(equalToConstant: 50),
            contactButton.widthAnchor.constraint(equalToConstant: 150)
        ])
    }
}

