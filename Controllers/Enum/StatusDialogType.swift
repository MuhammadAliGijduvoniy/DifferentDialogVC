//
//  Enum.swift
//  Controllers
//
//  Created by MuhammadAli on 27/02/24.
//

import Foundation
import UIKit

enum StatusDialogType {
    
    case updateApp
    case serverError
    case internetFailed
    case new
    
    var buttons: [StatusButtons] {
        switch self {
        case .updateApp:
            return [.updateNow, .cancel]
        case .serverError:
            return [ .close]
        case .internetFailed:
            return [.offline, .updateNow]
        case .new:
            return [.notNow]
        }
    }
    
    var img : UIImage {
        switch self {
        case .updateApp:
            return UIImage(systemName: "square.stack.3d.up.badge.automatic.fill")!
        case .serverError:
            return UIImage(systemName: "network.slash")!
        case .internetFailed:
            return UIImage(systemName: "firewall.fill")!
        case .new:
            return UIImage(systemName: "person.fill.badge.plus")!
        }
    }
    
}

