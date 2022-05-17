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
    
    private let myDarkImageView: UIImageView = {
        var myImageView = UIImageView()
        myImageView.layer.cornerRadius = 50
        myImageView.image = UIImage(named: "dark_theme")
        return myImageView
        
    }()
    
    private let myLightImageView: UIImageView = {
        var myImageView = UIImageView()
        myImageView.layer.cornerRadius = 50
        myImageView.image = UIImage(named: "light_theme")
        return myImageView
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Spotify"
        view.overrideUserInterfaceStyle = .light
        view.backgroundColor = spotifyGreen
        view.addSubview(signInButton)
        view.addSubview(myLightImageView)
        // this is not working
        /* if view.overrideUserInterfaceStyle == .dark {
            view.addSubview(myDarkImageView)
        } else if view.overrideUserInterfaceStyle == .light {
            view.addSubview(myLightImageView)
        }
         */
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
        myDarkImageView.frame = CGRect(
            x: view.left,
            y: view.top+view.safeAreaInsets.top,
            width: view.width+view.safeAreaInsets.left-view.safeAreaInsets.right,
            height: view.height+view.safeAreaInsets.top+view.safeAreaInsets.bottom-420
        )
        myLightImageView.frame = CGRect(
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
        guard success else {
            let alert = UIAlertController(title: "Don't succeed",
                                          message: "Something goes wrong when sign in",
                                          preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss",
                                          style: .cancel,
                                          handler: nil))
            present(alert, animated: true)
            return
        }
        let mainAppTabBarVC = TabBarViewController()
        mainAppTabBarVC.modalPresentationStyle = .fullScreen
        present(mainAppTabBarVC, animated: true)
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


