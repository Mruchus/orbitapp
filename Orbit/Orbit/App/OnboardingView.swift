//
//  OnboardingView.swift
//  Orbit
//
//  Created by mruchus on 24/10/2020.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    
    var loonas: [Loona] = loonaData
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(loonas[0...3]) { item in
                LoonaCardView(loona: item)
            } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - PREVIEW

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(loonas: loonaData)
    }
}
