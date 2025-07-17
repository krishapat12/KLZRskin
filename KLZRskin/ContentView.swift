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
                            .foregroundColor(Color(red: 0.709, green: 0.645, blue: 0.749))
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal)
                        
                        Text("About the App")
                            .font(.title)
                            .fontWeight(.medium)
                            .foregroundColor(Color(red: 0.706, green: 0.645, blue: 0.749))
                        
                        Text("KLZRglow provides tailored skincare recommendations based on your skin type using scientifically supported data.")
                            .font(.custom("HelveticaNeue", size: 20))
                            .fontWeight(.medium)
                            .foregroundColor(Color(red: 0.675, green: 0.735, blue: 0.678))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                        
                        NavigationLink(destination: SwiftUIView()){
                            Text("Click to learn your skin type")
                                .font(.subheadline)
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 0.58, green: 0.572, blue: 0.542))
                        }
                        NavigationLink(destination:journal()){
                            Text("Click to view the skincare jounral")
                                .font(.subheadline)
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 0.58, green: 0.572, blue: 0.542))
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

