//
//  ResponseData.swift
//  ResponseData
//
//  Created by Stewart Lynch on 2021-07-25.
//

import Foundation
import UIKit

struct ResponseData: Identifiable {
    let title: String
    var id: String {
        title
    }
    
    enum ErrorType {
        case none
        case error(String)
    }
    let error: ErrorType
}
