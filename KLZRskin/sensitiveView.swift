//
//  sensitiveView.swift
//  KLZRskin
//
//  Created by Scholar on 7/15/25.
//

import SwiftUI

struct sensitiveView: View {
    @State var choiceMade = "Pick a product"
    var body: some View {
        VStack{
            Text("Sensitive skin")
                .font(.custom("HelveticaNeue", size:80))
                .foregroundColor(Color(hue: 0.229, saturation: 0.251, brightness: 0.667))
                .multilineTextAlignment(.center)
            Text("Learn about cleanser, toner, serum, and mosturizer from the dropdown below. We have included a variety of products to give options. ")
                .multilineTextAlignment(.center)
                .font(.custom("HelveticaNeue", size:25))

            Text("")
            Menu{
                Button(action:{
                    choiceMade="Cleanser"
                    //add the code to that pops up the description of the cleanser
                },label:{
                    Text("Cleanser")
                        .foregroundColor(Color.black)
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
                    title: {Text("\(choiceMade)") },
                    icon:{Image(systemName:"plus")}
                )
            
            }
            .frame(width: 300.0, height: 50.0)
            .border(Color.black, width:2)
            Spacer()
        }
    }
}

#Preview {
    sensitiveView()
}
 
