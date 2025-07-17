//
//  ContentView.swift
//  KLZRskin
//
//  Created by Scholar on 7/15/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack {
                Color(red: 250/255, green: 246/255, blue: 242/255)
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack(spacing: 30) {
                        Image("banner")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: .infinity, maxHeight: 200)
                            .padding(.horizontal)
                        
                        Text("Unbiased Information. Accessible to everyone.")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color(hue: 0.953, saturation: 0.141, brightness: 0.503))
                            .padding(.horizontal)
                        
                        Text("About the App")
                            .font(.title)
                            .fontWeight(.medium)
                            .foregroundColor(Color(hue: 0.953, saturation: 0.141, brightness: 0.503))
                        
                        Text("KLZRglow provides tailored skincare recommendations based on your skin type using scientifically supported data.")
                            .font(.custom("HelveticaNeue", size: 20))
                            .fontWeight(.medium)
                            .foregroundColor(Color(hue: 0.222, saturation: 0.104, brightness: 0.593))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                        
                        NavigationLink(destination: SwiftUIView()){
                            Text("Click to learn your skin type")
                                .font(.subheadline)
                                .fontWeight(.bold)
                        }
                        
                        
                        .padding(.top, 10)
                        .padding(.horizontal)
                        
                        VStack {
                            Image("imagee")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(.bottom, 100.0)
                                .frame(maxWidth: .infinity)
                        }
                        Spacer()
                        Spacer()
                            .padding(.bottom, 200)
                        
                        
                        //.padding(.top, 10)
                    }
                    //.padding(.vertical, 40)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

