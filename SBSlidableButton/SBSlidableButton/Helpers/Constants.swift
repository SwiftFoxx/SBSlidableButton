//
//  Constants.swift
//  SBSlidableButton
//
//  Created by Koushik Mudi on 21/12/19.
//  Copyright © 2019 Koushik Mudi. All rights reserved.
//

import UIKit

// MARK: UI COMPONENTS
var mainScreenBounds: CGRect {
    return UIScreen.main.bounds
}

var userDefaults: UserDefaults {
    return UserDefaults.standard
}

var appDelegate: UIApplicationDelegate {
    return UIApplication.shared.delegate!
}

var notificationCenter: NotificationCenter {
    return NotificationCenter.default
}

var mainQueue: DispatchQueue {
    return DispatchQueue.main
}

var backgroundQueue: DispatchQueue {
    return DispatchQueue(label: "SBSlidableButton.Queue.Background", qos: .background, attributes: .concurrent)
}

var defaultAlertAction: (String) -> UIAlertAction = { title in
        return .init(title: title, style: .default)
}

var alertPopAction: (UIViewController, String, UIAlertAction.Style) -> UIAlertAction = { presenter, title, style in
    return .init(title: title, style: style) { _ in
        presenter.navigationController?.popViewController(animated: true)
    }
}



// MARK: ENUMERATIONS
enum Application {
    enum Key {
        /// Important keys such as applicationDidLaunch, applicationName etc.
        /// This enum may conform to a concrete or class type or may have associated type
    }
}

enum Strings {
    /// Redundantly used strings will be stored here in enum cases
}

enum Identifiers {
    enum ViewControllers {
        /// Storyboard identifiers of view controllers
    }
    
    enum TableViewCells {
        /// Storyboard identifiers of table view cells
    }
    
    enum CollectionViewCells {
        /// Storyboard identifiers of collection view cells
    }
}

enum Regex: String {
    case email = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    case password = "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,30}$"//".{6,}"
    case telephoneNumber = "^[0-9]{11}$"
    
    func validate(string: String) -> Bool {
        let predicate = NSPredicate(format: "SELF MATCHES %@", rawValue)
        return predicate.evaluate(with: string)
    }
}

// MARK: TYPEALIAS
typealias UITableViewable = UITableViewDataSource & UITableViewDelegate
typealias UICollectionViewable = UICollectionViewDataSource & UICollectionViewDelegate & UICollectionViewDelegateFlowLayout
typealias UIImagePickable = UIImagePickerControllerDelegate & UINavigationControllerDelegate
