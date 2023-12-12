//
//  ContentView.swift
//  SpeakBuddyJoseGonzalez
//
//  Created by José González on 12/11/23.
//

import SwiftUI
import UIKit

struct ContentView: View {
    var body: some View {
        ZStack {
            gradientElements
                .opacity(0.25)
                .ignoresSafeArea()
            Section {
                SectionView()
            } header: {
               HeaderView()
            } footer: {
               FooterView()
            }
        }
    }
}

#Preview {
    ContentView()
}
