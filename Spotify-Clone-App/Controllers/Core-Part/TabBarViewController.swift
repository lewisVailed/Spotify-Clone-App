//
//  TabBarViewController.swift
//  Spotify-Clone-App
//
//  Created by Ayberk Bilgiç on 1.05.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let viewC1 = HomeViewController()
        let viewC2 = SearchViewController()
        let viewC3 = LibraryViewController()
        viewC1.title = "Home"
        viewC2.title = "Search"
        viewC3.title = "Library"
        
        viewC1.navigationItem.largeTitleDisplayMode = .always
        viewC2.navigationItem.largeTitleDisplayMode = .always
        viewC3.navigationItem.largeTitleDisplayMode = .always
        
        let navi1 = UINavigationController(rootViewController: viewC1)
        let navi2 = UINavigationController(rootViewController: viewC2)
        let navi3 = UINavigationController(rootViewController: viewC3)
        navi1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house.circle.fill"), tag: 1)
        navi2.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass.circle.fill"), tag: 1)
        navi3.tabBarItem = UITabBarItem(title: "Library", image: UIImage(systemName: "book.circle.fill"), tag: 1)
        navi1.navigationBar.prefersLargeTitles = true
        navi2.navigationBar.prefersLargeTitles = true
        navi3.navigationBar.prefersLargeTitles = true
        
        setViewControllers([navi1, navi2, navi3], animated: false)
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
