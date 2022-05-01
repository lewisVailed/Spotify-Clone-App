//
//  HeadScreenViewController.swift
//  Spotify-Clone-App
//
//  Created by Ayberk Bilgiç on 1.05.2022.
//

import UIKit

class HeadScreenViewController: UIViewController {

    private let signInButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("Sign In With Spotify", for: .normal)
        button.setTitleColor(.systemGreen, for: .normal)
        button.setTitleShadowColor(.black, for: .normal)
        button.layer.cornerRadius = 5
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Spotify"
        view.backgroundColor = .systemGreen
        view.addSubview(signInButton)
        signInButton.addTarget(self, action: #selector(didTapSignInButton), for: .touchUpInside)
    
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        signInButton.frame = CGRect(x: 20, y: 1, width: 200, height: 50)
        
    }
    
    @objc func didTapSignInButton() {
        let vc = AuthViewController()
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


