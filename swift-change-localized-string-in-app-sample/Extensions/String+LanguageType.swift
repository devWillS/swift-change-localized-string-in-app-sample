//
//  String+LanguageType.swift
//  swift-change-localized-string-in-app-sample
//
//  Created by devWill on 2018/06/20.
//  Copyright © 2018年 devWill. All rights reserved.
//

import Foundation

enum LanguageType: Int {
    case Japanese
    case English
    case Chinese
}

extension String {
    static func languageTypeStringForKey(key: String) -> String {
        let main = Bundle.main
        guard let languageType = LanguageType(rawValue: UserDefaults.standard.integer(forKey: "LanguageType")) else {
            assertionFailure("nil")
            return String()
        }
        switch languageType {
        case .Japanese:
            return String(format: main.localizedString(forKey: key, value: nil, table: "Japanese"))
        case .English:
            return String(format: main.localizedString(forKey: key, value: nil, table: "English"))
        case .Chinese:
            return key
        }
    }
}
