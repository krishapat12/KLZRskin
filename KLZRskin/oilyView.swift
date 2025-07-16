//
//  oilyView.swift
//  KLZRskin
//
//  Created by Scholar on 7/15/25.
//


import SwiftUI
struct oilySkinView: View {
@State private var selectedProduct: String? = nil
@State private var productName: String? = nil
  var body: some View {
    VStack{
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

      Menu("Pick a Product") {
        Button("Cleanser") {
          productName = "CeraVe Foaming Facial Cleanser "
          selectedProduct = "This cleanser is a great choice for anyone with oily or acne-prone skin because it gently removes excess oil and impurities without over-drying. Unlike harsh cleansers that can disrupt the skin barrier, it’s formulated with ceramides and niacinamide to support healthy skin. Free of fragrance and irritating ingredients, it leaves the skin feeling clean, balanced, and refreshed after every use."
        }
        Button("Serum") {
          productName = "The Ordinary Niacinamide+ Zinc"
          selectedProduct = "This lightweight serum is a great pick for those dealing with visible pores, uneven texture, or frequent breakouts. With 10% niacinamide and 1% zinc, it helps minimize the look of pores, improve skin clarity, and refine texture over time. It also works to calm inflammation and reduce the appearance of blemishes, leaving skin looking smoother and more balanced."
        }
        Button("Moisturizer") {
          productName = "Neutrogena Hydro Boost Water Gel"
          selectedProduct = "This lightweight water gel moisturiser delivers long-lasting hydration without clogging pores, making it ideal after serum. Formulated with hyaluronic acid, it soothes and strengthens the skin barrier while balancing moisture levels to help control shine. Skin feels fresh, smooth, and comfortably hydrated throughout the day."
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
  oilySkinView()
}
