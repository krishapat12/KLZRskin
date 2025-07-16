//
//  dryView.swift
//  KLZRskin
//
//  Created by Scholar on 7/15/25.
//

import SwiftUI

struct DrySkinView: View {
@State private var selectedProduct: String? = nil
@State private var productName: String? = nil
    
    var body: some View {
        VStack(spacing:20){
            Text("Dry Skin")
                .font(.custom("HelveticaNeue", size:60))
                .fontWeight(.bold)
                .foregroundColor(Color(hue: 0.953, saturation: 0.141, brightness: 0.503))
            Text("Click on the dropdown below to access the skincare options for managing dry skin.")
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .font(.custom("HelveticaNeue", size:25))
            
            
            Menu("Pick a Product") {
                
                Button("Cleanser") {
                    productName = "Vanicream Gentle Cleanser"
                    selectedProduct = "This product is a great choice for anyone with dry or sensitive skin because it cleanses the face gently without stripping away moisture. Unlike many harsh cleansers, it contains no irritating ingredients or added fragrance, making it ideal for those prone to dryness or irritation. By preserving the skin’s natural oils, it helps maintain a healthy moisture balance, leaving the skin clean, soft, and comfortable after each use."
                   
                }
                
                Button("Serum") {
                    productName = "The Inkey List Omega Water moisturizer"
                    selectedProduct = "This product is lightweight yet deeply hydrating, making it perfect for dry or sensitive skin. It delivers moisture without feeling heavy or greasy, ensuring comfort throughout the day. Its soothing properties help calm the skin while locking in hydration, and it’s enriched with fatty acids that support the skin’s natural barrier. These nutrients aid in repairing and protecting dry, damaged skin, promoting a healthier and more resilient complexion over time."
                    
                }
                
                Button("Moisturizer") {
                    productName = "Eucerin Advanced Repair"
                    selectedProduct = "This product provides deep moisture to effectively relieve dry, rough skin, making it feel soft and nourished. It works to smooth and repair the skin’s surface, improving texture and overall appearance. Formulated with ingredients that enhance the skin’s ability to retain water, it helps maintain long-lasting hydration and strengthens the skin’s natural moisture barrier for lasting comfort."
                    
                }
                
            }
            .padding()
            =======
                .foregroundColor(Color(hue: 0.222, saturation: 0.104, brightness: 0.593))
                .padding(.horizontal)


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
                    title: {Text("\(choiceMade)")
                            .font(.title2)
                            .fontWeight(.semibold)
                        .foregroundColor(Color.black) },
                    icon:{Image(systemName:"plus")}
                )
            
            if let name = productName {
                Text(name)
                    .font(.title2)
                    .padding()
                //alter how the title name looks
            }
            
            if let product = selectedProduct {
                Text(product)
                    .font(.body)
                    .padding()
                //alter how the description
            }
            
           
            
            
            .padding(.all)
            .frame(width: 300.0, height: 50.0)
            .border(Color.black, width:1)
            Spacer()
        }
        
        
        
        
    }
}


#Preview {
    DrySkinView()
}
 
