//
//  ViewController.swift
//  Messenger
//
//  Created by AbdulMajid Shaikh on 21/12/24.
//

import UIKit

class ConversationsViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
    }
    
    
    override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
        
        let isLoggedIn = UserDefaults.standard.value(forKey: "loggedIn")
        
        if (isLoggedIn == nil)
        {
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: false)
        }
    }


}

