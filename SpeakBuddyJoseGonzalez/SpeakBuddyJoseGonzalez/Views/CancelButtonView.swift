//
//  CancelButtonView.swift
//  SpeakBuddyJoseGonzalez
//
//  Created by José González on 12/12/23.
//

import SwiftUI

struct CancelButtonView: View {
    var body: some View {
        HStack {
            ZStack {
                Circle()
                    .fill(.white)
                    .frame(width: 38, height: 38)
                Image(systemName: Constants.xmark)
                    .bold()
            }
        }
        .frame(maxWidth: .infinity, alignment: .trailing )
        .padding(.trailing, 30)
        .onTapGesture {
            print("Cancel")
        }
    }
}

#Preview {
    CancelButtonView()
        .background(.blue)
}
