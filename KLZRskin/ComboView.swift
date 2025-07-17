//
// ComboView.swift
// KLZRskin
//
// Created by Scholar on 7/15/25.
//
import SwiftUI
struct comboSkinView: View {
@State private var selectedProduct: String? = nil
@State private var productName: String? = nil
 var body: some View {
  VStack{
    Text("Combo Skin")
        .foregroundColor(Color(hue: 0.953, saturation: 0.141, brightness: 0.503))
        .font(.custom("HelveticaNeue", size:60))
        .fontWeight(.bold)
       Text("Click on the dropdown below to access the options for the combo skin products!")
        .font(.custom("HelveticaNeue", size:25))
        .multilineTextAlignment(.center)
        .foregroundColor(Color(hue: 0.222, saturation: 0.104, brightness: 0.593))
        .fontWeight(.bold)
        .padding(.horizontal)
       Menu("Pick a Product") {
    Button("Cleanser") {
     productName = "La Roche-Posay Tolerine Purifying Foaming Cleanser"
     selectedProduct = "This is a great cleanser if you have oily or combination skin and want something that does the job without stripping your face dry. It foams up nicely and gets rid of dirt, oil, and makeup, but still feels gentle, no tight or squeaky-clean feeling afterward. It’s also fragrance-free, which is a big plus for sensitive skin. The formula includes ingredients like niacinamide and the brand’s thermal spring water, which help calm the skin while cleansing. It’s a solid, no-nonsense daily face wash."
    }
    Button("Serum") {
     productName = "Paula’s Choice Skin Balancing Pore-Reducing Serum"
     selectedProduct = "This serum is a go-to if you deal with enlarged pores or uneven texture, especially in oily areas. It’s lightweight and sinks in quickly without leaving any sticky or greasy feel. The key ingredient, niacinamide, helps smooth out the skin, control shine, and reduce the appearance of pores over time. It’s easy to use under moisturizer or makeup, and it’s fragrance-free too, which makes it a safe option for sensitive skin."
    }
    Button("Moisturizer") {
     productName = "Clinique Dramatically Different Hydrating Jelly "
     selectedProduct = "This jelly moisturizer is perfect if you want hydration without any heaviness. It’s clear, oil-free, and absorbs fast, great for people who don’t like the feeling of thick creams but still need moisture. It’s especially good for oily or acne-prone skin since it won’t clog pores or add shine. It also helps strengthen the skin’s barrier, which is key for keeping it healthy and resilient. You can use it alone or layer it under other skincare products easily."
    }
   }
   .padding()
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
  }
 }
}
#Preview {
 comboSkinView()
}
