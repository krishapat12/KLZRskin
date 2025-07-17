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
            Text("This is a skincare jounral where you can add milestones. ")
                .font(.title)
                .multilineTextAlignment(.center)
                .padding(.all)
            Button("Click to add entry") {
                showTextField=true
              
            }
            if showTextField{
            TextField("Start typing here", text: $jounralEntry)
                  
            }
            
            
            
           
            
        }
       
        }
    
}

#Preview {
    journal()
}
