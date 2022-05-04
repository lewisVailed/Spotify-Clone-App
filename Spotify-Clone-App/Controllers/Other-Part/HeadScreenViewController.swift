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
        button.setTitleColor(spotifyGreen, for: .normal)
        button.setTitleShadowColor(.black, for: .normal)
        button.layer.cornerRadius = 20
        return button
    }()
    
    private let myImageView: UIImageView = {
        var myImageView = UIImageView()
        myImageView.image = UIImage(named: "")
        myImageView.layer.cornerRadius = 50
        return myImageView
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Spotify"
        view.backgroundColor = spotifyGreen
        view.addSubview(signInButton)
        view.addSubview(myImageView)
        signInButton.addTarget(self, action: #selector(didTapSignInButton), for: .touchUpInside)
    
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        signInButton.frame = CGRect(
            x: 20,
            y: view.height-50-view.safeAreaInsets.bottom,
            width: view.width-40,
            height: 50
        )
        myImageView.frame = CGRect(
            x: view.left,
            y: view.top+view.safeAreaInsets.top,
            width: view.width+view.safeAreaInsets.left-view.safeAreaInsets.right,
            height: view.height+view.safeAreaInsets.top+view.safeAreaInsets.bottom-420
        )
        
    }
    
    @objc func didTapSignInButton() {
        let vc = AuthViewController()
        vc.completionHandler = { [weak self] success in
            DispatchQueue.main.async {
                self?.handleSignIn(success: success)
            }
        }
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private func handleSignIn(success: Bool) {
        // Log user or catch error
        
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


