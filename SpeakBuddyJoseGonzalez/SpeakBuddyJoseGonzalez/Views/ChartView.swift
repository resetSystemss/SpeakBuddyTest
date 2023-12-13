//
//  ChartView.swift
//  SpeakBuddyJoseGonzalez
//
//  Created by José González on 12/12/23.
//

import SwiftUI
import Charts

struct ChartView: View {
    @State var samples: [GraphItem] = sampleMocks
    var body: some View {
        let max = samples.max { item1, item2 in
            return item2.views > item1.views
        }?.views ?? 0
        Chart {
            ForEach(samples) { item in
                BarMark(x: .value("", item.value),
                        y: .value("", item.animate ? item.views : 0))
                .foregroundStyle(gradientBarElements)
            }
        }
        .chartYAxis(.hidden)
        .chartYScale(domain: 0...(max))
        .aspectRatio(1, contentMode: .fit)
        .frame(maxWidth: .infinity )
        .padding(.horizontal, 30)
        .padding()
        .onAppear(){
            for(index,_) in samples.enumerated() {
                DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * 0.3) {
                    withAnimation(.interactiveSpring(response: 0.8, dampingFraction: 0.8, blendDuration: 0.8)) {
                           samples[index].animate = true

                    }
                }
            }
        }
    }
}

#Preview {
    ChartView()
}


//struct ChartView2: View {
//    var body: some View {
//        Chart {
//            BarMark(x: .value("", "0"),
//                    y: .value("", 0.5))
//            .foregroundStyle(gradientBarElements)
//            BarMark(x: .value("", "3"),
//                    y: .value("", 1))
//            .foregroundStyle(gradientBarElements)
//            BarMark(x: .value("", "1"),
//                    y: .value("", 2))
//            .foregroundStyle(gradientBarElements)
//            BarMark(x: .value("", "2"),
//                    y: .value("", 3))
//            .foregroundStyle(gradientBarElements)
//        }
//    }
//
//}
//
//#Preview {
//    ChartView2()
//}

//                withAnimation(.easeIn(duration: 0.5).delay(Double(index) * 0.3)) {
//                    samples[index].animate = true
//                }

//        Chart {
//            BarMark(x: .value("", "0"),
//                    y: .value("Population", 0.5))
//            .foregroundStyle(gradientBarElements)
//            BarMark(x: .value("", "3"),
//                    y: .value("Population", 1))
//            .foregroundStyle(gradientBarElements)
//            BarMark(x: .value("", "1"),
//                    y: .value("Population", 2))
//            .foregroundStyle(gradientBarElements)
//            BarMark(x: .value("", "2"),
//                    y: .value("Population", 3))
//            .foregroundStyle(gradientBarElements)
//        }
//        .chartXAxis(.hidden)
