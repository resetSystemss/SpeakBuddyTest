//
//  HeaderView.swift
//  SpeakBuddyJoseGonzalez
//
//  Created by José González on 12/12/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            Text(Constants.hello)
                .font(.custom(Constants.fontSFPro, fixedSize: 36))
            Text(Constants.speakBUDDY)
                .font(.custom(Constants.fontSFPro, fixedSize: 36))
            Spacer()
        }
        .padding()
    }
}
#Preview {
    HeaderView()
}
