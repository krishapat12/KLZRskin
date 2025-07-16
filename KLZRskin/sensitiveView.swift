//
//  sensitiveView.swift
//  KLZRskin
//
//  Created by Scholar on 7/15/25.
//

import SwiftUI
struct sensitiveview: View {
@State private var selectedProduct: String? = nil
@State private var productName: String? = nil
  var body: some View {
    VStack{
        Text("Sensitive Skin")
            .foregroundColor(Color(hue: 0.953, saturation: 0.141, brightness: 0.503))
            .font(.custom("HelveticaNeue", size:60))
            .fontWeight(.bold)
        Text("Click on the dropdown below to access the skincare options for managing sensitive skin.")
            .font(.custom("HelveticaNeue", size:25))
            .multilineTextAlignment(.center)
            .foregroundColor(Color(hue: 0.222, saturation: 0.104, brightness: 0.593))
            .fontWeight(.bold)
            .padding(.horizontal)

      Menu("Pick a Product") {
        Button("Cleanser") {
          productName = "La Roche-Posay Tolerine Hydrating Gentle Cleanser"
          selectedProduct = "This product cleanses the skin gently without causing irritation, making it ideal for those with sensitive or easily reactive skin. It’s free from fragrance and harsh ingredients, reducing the risk of dryness or discomfort. By maintaining the skin’s natural balance, it helps keep your complexion calm, clear, and healthy with every use."
        }
        Button("Serum") {
          productName = "The Ordinary Azelaic Acid Suspension 10%"
          selectedProduct = "This product is designed to help calm irritation while gently improving the appearance of your skin. It works to even out skin tone by fading dark spots over time, making it a great option for those looking to achieve a more radiant complexion. It's also a suitable alternative for individuals who are sensitive to retinoids or vitamin C, offering noticeable results without the risk of irritation."
        }
        Button("Moisturizer") {
          productName = ""
          selectedProduct = "This gentle daily moisturizer soothes and protects sensitive skin while defending against environmental stress. With broad-spectrum SPF 30, it shields skin from harmful UV rays without causing irritation. The non-greasy, fast-absorbing formula won’t clog pores, making it perfect for everyday wear."
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
    sensitiveview()
}
