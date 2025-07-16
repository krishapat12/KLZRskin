//
//  ContentView.swift
//  KLZRskin
//
//  Created by Scholar on 7/15/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing:10){
            Image("banner")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(height: 200.0)

          
            
            
                .padding()
             
                Text("Unbiased Information. Accessible to everyone.")
                .fontWeight(.bold)

                .font(.custom("HelveticaNeue", size:30))
                .multilineTextAlignment(.leading)
                .foregroundColor(Color(hue: 0.953, saturation: 0.141, brightness: 0.503))

                Text("")
                 
                
              
                    Text("About the app:")
                    .fontWeight(.bold)

                    .font(.custom("HelveticaNeue", size:30))
                    .foregroundColor(Color(hue: 0.953, saturation: 0.141, brightness: 0.503))

                    Text("Based on your skin type a  series of skincare prodcuts will be recommended.")
                .font(.custom("HelveticaNeue", size:25))
                .fontWeight(.bold)
                .foregroundColor(Color(hue: 0.222, saturation: 0.104, brightness: 0.593))
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                    

                    Text("")
                    Text("")
                    HStack{
                        
                        Text("Want to learn your skin type?")
                            .fontWeight(.bold)

                            .font(.system(size:30))
                            .foregroundColor(Color(hue: 0.953, saturation: 0.141, brightness: 0.503))
                            .multilineTextAlignment(.center)

                        Button("Click me") {
                                
                        
                        }
                        .padding(.all)
                        
                        .font(.system(size:20))
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.222, saturation: 0.104, brightness: 0.593))
                        .border(Color.black, width:1)

                      
                    }
            HStack{
            Image("tree")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                Image("tree")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                Image("tree")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                Image("tree")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
            }
            }
        
        Spacer()
    }
}
#Preview {
    ContentView()
}
