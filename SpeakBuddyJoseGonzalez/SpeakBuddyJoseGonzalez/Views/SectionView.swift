//
//  SectionView.swift
//  SpeakBuddyJoseGonzalez
//
//  Created by José González on 12/12/23.
//

import SwiftUI

struct SectionView: View {
    
    var body: some View {
        VStack {
            ZStack {
                Image("2")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .foregroundStyle(.tint)
                VStack(alignment: .leading) {
                    Image(Constants.protty)
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                }
                .padding(.trailing,120)
                .padding(.bottom, 200)
            }
            Text(Constants.labelOne)
                .font(.custom(Constants.fontHiraginoSans, fixedSize: 20))
            Text(Constants.labelTwo)
                .font(.custom(Constants.fontSFPro, fixedSize: 30))
                .foregroundStyle(.blue)
        }
        
    }
}

#Preview {
    SectionView()
}
