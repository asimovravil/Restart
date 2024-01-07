//
//  ContentView.swift
//  Restart
//
//  Created by Ravil on 20.11.2023.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
        .animation(.easeInOut, value: isOnboardingViewActive)
    }
}

#Preview {
    ContentView()
}
