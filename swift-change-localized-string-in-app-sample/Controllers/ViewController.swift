//
//  ViewController.swift
//  swift-change-localized-string-in-app-sample
//
//  Created by devWill on 2018/06/20.
//  Copyright © 2018年 devWill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let userDefaults = UserDefaults.standard

    @IBOutlet weak var label: UILabel!
    
    @IBAction func tappedJapaneseButton(_ sender: UIButton) {
        changeLanguage(languageType: .Japanese)
    }
    @IBAction func tappedEnglishButton(_ sender: UIButton) {
        changeLanguage(languageType: .English)
    }
    @IBAction func tappedChineseButton(_ sender: UIButton) {
        changeLanguage(languageType: .Chinese)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let text = String.languageTypeStringForKey(key: "label")
        label.text = text
    }
    
    func changeLanguage(languageType: LanguageType) {
        userDefaults.set(languageType.rawValue, forKey: "LanguageType")   
        let text = String.languageTypeStringForKey(key: "label")
        label.text = text
    }
}

