//
//  OnboardingSample.swift
//  FastSwiftBasic
//
//  Created by 최안용 on 10/29/23.
//

import SwiftUI

struct OnboardingSample: View {
    
    let onboardingTitle: String
    let backgroundColor: Color
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            Text(onboardingTitle)
        }
    }
}

#Preview {
    OnboardingSample(onboardingTitle: "온보딩 테스트", backgroundColor: .brown)
}
