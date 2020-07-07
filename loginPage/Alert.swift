//
//  Alert.swift
//  loginPage
//
//  Created by Abdusalom Hojiev on 7/7/20.
//  Copyright © 2020 Abdusalom Hojiev. All rights reserved.
//

import Foundation
import UIKit


class Alert {
    
    class func showBasic(title: String, message: String, vc: UIViewController) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        vc.present(alert, animated: true)
    }
}
