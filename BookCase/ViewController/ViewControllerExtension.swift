//
//  ViewControllerExtension.swift
//  BookCase
//
//  Created by akhil mantha on 23/08/2018.
//  Copyright © 2018 akhil mantha. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    // Show alert message
    func showAlert(title: String?, message errormessage: String) {
        let alertController = UIAlertController(title: title, message: errormessage, preferredStyle: .alert)
        let dismissAction = UIAlertAction(title: "Dismiss", style: .cancel, handler: nil)
        alertController.addAction(dismissAction)
        present(alertController, animated: true, completion: nil)
    }
    
}
