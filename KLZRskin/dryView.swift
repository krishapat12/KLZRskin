//
// dryView.swift
// KLZRskin
//
// Created by Scholar on 7/15/25.
//
import SwiftUI
struct DrySkinView: View {
@State private var selectedProduct: String? = nil
@State private var productName: String? = nil
  var body: some View {
    VStack{
      Text("Dry Skin")
        .font(.custom("HelveticaNeue", size:80))
        .foregroundColor(Color(hue: 0.229, saturation: 0.251, brightness: 0.667))
      Text("Learn about cleanser, toner, serum, and mosturizer from the dropdown below. We have included a variety of products to give options. ")
        .multilineTextAlignment(.center)
        .font(.custom("HelveticaNeue", size:25))
      Menu("Pick a Product") {
        Button("Cleanser") {
          productName = "Vanicream Gentle Cleanser"
          selectedProduct = "This product is a great choice for anyone with dry or sensitive skin because it cleanses the face gently without stripping away moisture. Unlike many harsh cleansers, it contains no irritating ingredients or added fragrance, making it ideal for those prone to dryness or irritation. By preserving the skin’s natural oils, it helps maintain a healthy moisture balance, leaving the skin clean, soft, and comfortable after each use."
        }
        Button("Serum") {
          productName = "x"
          selectedProduct = "serum text"
        }
        Button("Moisturizer") {
          productName = "x"
          selectedProduct = "moisturizer text"
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
  DrySkinView()
}
