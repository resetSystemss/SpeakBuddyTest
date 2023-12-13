//
//  GraphItem.swift
//  SpeakBuddyJoseGonzalez
//
//  Created by José González on 12/12/23.
//

import Foundation

struct GraphItem: Identifiable {
    var id = UUID()
    var value: String
    var views: Double
    var animate: Bool = false
}
