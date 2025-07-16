//
//  oilyView.swift
//  KLZRskin
//
//  Created by Scholar on 7/15/25.
//

import SwiftUI
struct oily_skin_view: View {
    @State var choiceMade = "Pick a product"
    var body: some View {
        VStack(spacing:20){
            Text("Oily Skin")
                .foregroundColor(Color(hue: 0.953, saturation: 0.141, brightness: 0.503))
                .font(.custom("HelveticaNeue", size:60))
                .fontWeight(.bold)

            Text("Click on the dropdown below to access the skincare options for managing oily skin.")
                .font(.custom("HelveticaNeue", size:25))
                .multilineTextAlignment(.center)
                .foregroundColor(Color(hue: 0.222, saturation: 0.104, brightness: 0.593))
                .fontWeight(.bold)
                .padding(.horizontal)


            Text("")
            
            Menu{
                Button(action:{
                    choiceMade="Cleanser"
                    //add the code to that pops up the description of the cleanser
                },label:{
                    Text("Cleanser")
                })
                Button(action:{
                    choiceMade="Serum"
                    //add the code to that pops up the description of the serum
                    
                },label:{
                    Text("Serum")
                })
                Button(action:{
                    choiceMade="Mosturizer"
                    //add the code to that pops up the description of the mosturizer
                    
                },label:{
                    Text("Mosturizer")
                })

            }
            label:{
                Label(
                    title: {Text("\(choiceMade)")
                            .font(.title2)
                            .fontWeight(.semibold)
                        .foregroundColor(Color.black) },
                    
                    icon:{Image(systemName:"plus")}
                )
                
            }
            .padding(.all)
            .frame(width: 300.0, height: 50.0)
            .border(Color.black, width:1)
            Spacer()
        }
    }
}


#Preview {
    oily_skin_view()
}


