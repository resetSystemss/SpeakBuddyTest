//
//  Utilities.swift
//  SpeakBuddyJoseGonzalez
//
//  Created by José González on 12/12/23.
//

import Foundation
import SwiftUI


public let gradientElements = LinearGradient(colors: [Color.purple.opacity(0.2),
                                                      Color.white],
                                             startPoint: .top,
                                             endPoint: .bottom)

public let gradientBarElements = LinearGradient(colors: [Color.init(hex: Colors.blue).opacity(0.7),
                                                         Color.init(hex: Colors.blue)],
                                                startPoint: .top,
                                                endPoint: .bottom)

var sampleMocks : [GraphItem] = [GraphItem(value: Constants.valueOne, views: 5),
                                  GraphItem(value: Constants.valueTwo, views: 10),
                                  GraphItem(value: Constants.valueThree, views: 20),
                                  GraphItem(value: Constants.valueFour, views: 30)]

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
