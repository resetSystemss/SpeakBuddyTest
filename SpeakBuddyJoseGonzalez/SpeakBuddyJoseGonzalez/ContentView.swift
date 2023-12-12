//
//  ContentView.swift
//  SpeakBuddyJoseGonzalez
//
//  Created by José González on 12/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            gradientElements
                .opacity(0.25)
                .ignoresSafeArea()
            
            Section {
                VStack {
                    ZStack {
                        Image("2")
                            .resizable()
                            .frame(width: 300, height: 300)
                            .foregroundStyle(.tint)
                        VStack(alignment: .leading) {
                            Image("protty")
                                .imageScale(.large)
                                .foregroundStyle(.tint)
                        }
                        .padding(.trailing,120)
                        .padding(.bottom, 200)
                    }
                    Text("スピークバディで")
                        .font(.custom("Hiragino Sans", fixedSize: 20))
                    Text("レベルアップ")
                        .font(.custom("SF Pro", fixedSize: 30))
                        .foregroundStyle(.blue)
                }
            } header: {
                VStack {
                    Text("Hello")
                        .font(.custom("SF Pro", fixedSize: 36))
                    Text("SpeakBUDDY")
                        .font(.custom("SF Pro", fixedSize: 36))
                    Spacer()
                }
                .padding()
            } footer: {
                VStack {
                    Spacer()
                    HStack {
                        Text("プランに登録する")
                            .font(.custom("Hiragino Sans", fixedSize: 16))
                            .foregroundStyle(.white)
                    }
                    .frame(height: 56)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 220, style: .continuous))
                    .padding(.horizontal, 30)
                    
                    
                    
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}

public let gradientElements = LinearGradient(colors: [Color.purple,
                                                      Color.white],
                                             startPoint: .top,
                                             endPoint: .bottom)
