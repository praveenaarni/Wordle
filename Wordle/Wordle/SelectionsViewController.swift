//
//  SelectionsViewController.swift
//  Wordle
//
//  Created by Praveena Arni on 4/7/23.
//

import UIKit

class SelectionsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    @IBAction func darkModeSelectedSlider(_ sender: Any) {
        let scenes = UIApplication.shared.connectedScenes
        let windowScene = scenes.first
        as? UIWindowScene
        let window = windowScene?.windows.first
        let interfaceStyle = window?.overrideUserInterfaceStyle ==
        .unspecified ?
        UIScreen.main.traitCollection.userInterfaceStyle : window?.overrideUserInterfaceStyle
        if interfaceStyle != .dark {
        window?.overrideUserInterfaceStyle = .dark
}
        else {
        window?.overrideUserInterfaceStyle = .light
        }
    }
}
