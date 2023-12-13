//
//  SectionView.swift
//  SpeakBuddyJoseGonzalez
//
//  Created by José González on 12/12/23.
//

import SwiftUI

struct SectionView: View {
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                ChartView()
                VStack(alignment: .leading) {
                    Image(Constants.protty)
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                        .frame(width: 187.72, height: 160)
                    Spacer()
                }
                .frame(height: 400)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, UIScreen.main.bounds.width / 2 - 187.72)

            }
            .frame(height: 400)
            .frame(maxWidth: .infinity, alignment: .leading)
            Text(Constants.labelOne)
                .font(.custom(Constants.fontHiraginoSans, fixedSize: 20))
                .bold()
                .foregroundStyle(Color.init(hex: Colors.monoBlack))
                .padding(.bottom, 5)
            Text(Constants.labelTwo)
                .font(.custom(Constants.fontSFPro, fixedSize: 30))
                .bold()
                .foregroundStyle(Color.init(hex: Colors.blue))
        }
    }
}

#Preview {
    SectionView()
}
