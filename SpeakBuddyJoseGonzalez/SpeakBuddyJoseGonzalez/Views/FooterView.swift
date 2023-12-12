//
//  FooterView.swift
//  SpeakBuddyJoseGonzalez
//
//  Created by José González on 12/12/23.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Text(Constants.buttonOne)
                    .font(.custom(Constants.fontHiraginoSans, fixedSize: 16))
                    .foregroundStyle(.white)
            }
            .frame(height: 56)
            .frame(maxWidth: .infinity)
            .background(.pink)
            .clipShape(RoundedRectangle(cornerRadius: 220, style: .continuous))
            .padding(.horizontal, 30)
            .onTapGesture {
                
            }
        }
    }
}

#Preview {
    FooterView()
}
