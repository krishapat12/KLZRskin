//
//  NormalView.swift
//  KLZRskin
//
//  Created by Scholar on 7/16/25.
//

import SwiftUI
struct NormalView: View {
@State private var selectedProduct: String? = nil
@State private var productName: String? = nil
@State private var ShowImageNormalMoisturizer=false
@State private var ShowImageNormalSerum=false
    @State private var ShowImageNormalCleanser=false
  var body: some View {
    VStack{
        Text("Normal skin")
            .foregroundColor(Color(hue: 0.953, saturation: 0.141, brightness: 0.503))
            .font(.custom("HelveticaNeue", size:60))
            .fontWeight(.bold)
        Text("Click on the dropdown below to access the skincare options for managing normal skin.")
            .font(.custom("HelveticaNeue", size:25))
            .multilineTextAlignment(.center)
            .foregroundColor(Color(hue: 0.222, saturation: 0.104, brightness: 0.593))
            .fontWeight(.bold)
            .padding(.horizontal)

      Menu("Pick a Product") {
        Button("Cleanser") {
          productName = "Cetaphil Gentle Skin Cleanser"
          selectedProduct = "This gentle, non-irritating cleanser is ideal for normal to sensitive skin. Its soap-free, fragrance-free formula helps reduce the risk of dryness or irritation, making it suitable for daily use. It effectively removes dirt and impurities without stripping the skin’s natural moisture, leaving it soft, calm, and clean."
            ShowImageNormalSerum=false
            ShowImageNormalMoisturizer=false
            ShowImageNormalCleanser.toggle()
            ShowImageNormalCleanser=true
        }
        Button("Serum") {
          productName = "The Inkey List Hyaluronic Acid Serum"
          selectedProduct = "This fragrance-free formula hydrates deeply by drawing moisture into the skin, helping to plump and smooth the appearance of fine lines. Gentle and effective, it supports a healthy, refreshed complexion without irritation."
            ShowImageNormalMoisturizer=false
            ShowImageNormalCleanser=false
            ShowImageNormalSerum.toggle()
            ShowImageNormalSerum=true
        }
        Button("Moisturizer") {
          productName = "CeraVE Facial Moisturizing lotion"
          selectedProduct = "This lightweight, non-greasy lotion is perfect for normal skin. It contains ceramides to help restore and protect the skin barrier, while niacinamide soothes and calms the skin, leaving it hydrated and balanced all day."
            ShowImageNormalSerum=false
            ShowImageNormalCleanser=false
            
            ShowImageNormalMoisturizer.toggle()
            ShowImageNormalMoisturizer=true
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
        if ShowImageNormalMoisturizer{
            Image("NormalMois")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width:150.0, height: 150.0)
        }
        if ShowImageNormalSerum{
            Image("NormalSerum")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 150.0, height: 150.0)
        }
        if ShowImageNormalCleanser{
            Image("NormalCleanser")
                .resizable(resizingMode:  .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 150.0, height: 150.0)
        }
      }
    }
  }

#Preview {
    NormalView()
}
