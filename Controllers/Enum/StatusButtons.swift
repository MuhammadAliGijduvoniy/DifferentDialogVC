//
//  StatusButtons.swift
//  Controllers
//
//  Created by MuhammadAli on 27/02/24.
//

import Foundation
import UIKit

enum StatusButtons : Int {
    case updateNow
    case offline
    case notNow
    case yes
    case cancel
    case close
    
    var title : String {
        switch self {
        case .updateNow:
            return "Update"
        case .offline:
            return "Offline"
        case .notNow:
            return "notNow"
        case .yes:
            return "Yes"
        case .cancel:
            return "Cancel"
        case .close:
            return "Close"
        }
    }
    
    var backColor: UIColor {
        switch self {
        case .updateNow, .close, .cancel:
            return .systemBlue
        default :
            return .lightGray
        }
    }
    
}
