//
//  journal.swift
//  KLZRskin
//
//  Created by Scholar on 7/17/25.
//

import SwiftUI

struct journal: View {
    @State private var jounralEntry=""
    @State private var showTextField=false
    var body: some View {
        ScrollView {
            Text("This is a skincare jounral where you can add milestones and keep track of progress.")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color(hue: 0.81, saturation: 0.489, brightness: 0.431))
                .multilineTextAlignment(.center)
            Spacer()
            Button("Click to add entry") {
                showTextField=true
            }
            Spacer()
            if showTextField{
            TextField("Start typing here...", text: $jounralEntry)
                
                  
            }
            
        }
       
        }
    
}

#Preview {
    journal()
}
