//
//  Extensions.swift
//  Cashly
//
//  Created by Giovanni Maya on 3/14/24.
//

import Foundation
import SwiftUI

extension Color {
    static let backgroundColor = Color("Background")
    static let iconColor = Color("Icon")
    static let textColor = Color("Text")
    static let systemBackground = Color(uiColor: .systemBackground)
}


extension DateFormatter {
    static let allNumeric: DateFormatter = {
        print("Initializing date formatter")
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        return formatter
    }()
}


extension String {
    func dateParse() -> Date {
        guard let parsedDate = DateFormatter.allNumeric.date(from: self) else {
            return Date()
        }
        return parsedDate
            
    }
}
