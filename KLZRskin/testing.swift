//
//  testing.swift
//  KLZRskin
//
//  Created by Scholar on 7/16/25.
//

import SwiftUI
struct normalView: View {
@State private var selectedProduct: String? = nil
@State private var productName: String? = nil
  var body: some View {
    VStack{
        Text("Sensitive Skin")
            .foregroundColor(Color(hue: 0.953, saturation: 0.141, brightness: 0.503))
            .font(.custom("HelveticaNeue", size:60))
            .fontWeight(.bold)
        Text("Click on the dropdown below to access the skincare options for managing normal skin.")
            .font(.custom("HelveticaNeue", size:25))
            .multilineTextAlignment(.center)
            .foregroundColor(Color(hue: 0.222, saturation: 0.104, brightness: 0.593))
            .fontWeight(.bold)
            .padding(.horizontal)
        Text("testing")

      Menu("Pick a Product") {
        Button("Cleanser") {
          productName = ""
          selectedProduct = ""
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
    noramlView()
}
