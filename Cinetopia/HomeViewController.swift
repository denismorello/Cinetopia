//
//  ViewController.swift
//  Cinetopia
//
//  Created by Denis Ruiz Morello on 18/09/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    private lazy var logoImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage.logo)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var coupleImageView: UIImageView = {
        let imagemView = UIImageView(image: UIImage.couple)
        imagemView.translatesAutoresizingMaskIntoConstraints = false
        return imagemView
    }()
    
    private lazy var welcomeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "O lugar ideal para buscar, salvar e organizar seus filmes favoritos!"
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20, weight: .bold)
        return label
    }()
    
    private lazy var welcomeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Quero começar!", for: .normal)
        button.backgroundColor = .buttonBackground
        button.setTitleColor(.background, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.layer.cornerRadius = 32
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        return button
    }()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            view.backgroundColor = .background
            addSubviews()
            setupConstraints()
            
        }
    @objc private func buttonPressed() {
        navigationController?.pushViewController(MoviesViewController(), animated: true)
    }

        private func addSubviews() {
            view.addSubview(logoImageView)
            view.addSubview(coupleImageView)
            view.addSubview(welcomeLabel)
            view.addSubview(welcomeButton)
        }
        
        private func setupConstraints() {
            NSLayoutConstraint.activate([
                logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
                logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                
                coupleImageView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 32),
                coupleImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                
                welcomeLabel.topAnchor.constraint(equalTo: coupleImageView.bottomAnchor, constant: 32),
                welcomeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
                welcomeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
                
                welcomeButton.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 32),
                welcomeButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 64),
                welcomeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -64),
                welcomeButton.heightAnchor.constraint(equalToConstant: 64)
                
            ])
        }
}
