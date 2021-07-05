//
//  LoonaCardView.swift
//  Orbit
//  Created by mruchus on 23/10/2020.
//

import SwiftUI

struct LoonaCardView: View {
    // MARK - PROPERTIES
    
    var loona: Loona
    
    @State private var isAnimating: Bool = false
    
    
    //MARK - BODY
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // LOONA: IMAGE
                Image(loona.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue:0, opacity:0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                // LOONA: TITLE
                Text(loona.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                // LOONA: HEADLINE
                Text(loona.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                // BUTTON: START
                StartButtonView()
            } //: VSTACK
        } //: ZSTACK
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(LinearGradient(gradient: Gradient(colors: loona.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

//MARK - PREVIEW

struct LoonaCardView_Previews: PreviewProvider {
    static var previews: some View {
        LoonaCardView(loona: loonaData[1])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
