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
                .ignoresSafeArea()
            VStack() {
                CancelButtonView()
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
}

#Preview {
    ContentView()
}
