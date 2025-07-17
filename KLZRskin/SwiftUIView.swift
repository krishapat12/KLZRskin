import SwiftUI

struct SwiftUIView: View {
    @State private var showMoreInfo = false
    
    var body: some View {
        NavigationStack{
            VStack {
                Text("Skin Type Quiz")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 5.0)
                
                Text("Start by washing your face with a gentle cleanser and wait 15 - 30 minutes. Click the icon that matches what you see.")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.vertical, 7.0)
                
                
                Button(action: {
                    withAnimation {
                        showMoreInfo.toggle()
                    }
                }) {
                    HStack {
                        Text("What to look for in a gentle cleanser")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Image(systemName: showMoreInfo ? "chevron.up" : "chevron.down")
                            .foregroundColor(.blue)
                    }
                    .padding(.vertical, 4)
                }
                
                if showMoreInfo {
                    Text("When looking for a gentle cleanser, look for products specifically labeled as gentle, fragrance-free, or suitable for sensitive skin.")
                        .font(.subheadline)
                        .padding(.bottom, 8)
                        .transition(.opacity)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                }
                
                Text("If you have a tendency to break out or develop rashes easily and notice redness, itching, burning, or stinging, click on the sensitive skin icon. ")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.vertical, 7.0)
                
                Spacer()
                
                HStack {
                    NavigationLink(destination: DrySkinView()){
                        Image("dryskin")
                            .resizable()
                            .frame(width: 130, height: 130)
                        
                    }
                    
                    NavigationLink(destination:oilySkinView()){
                        Image("oilyskin")
                            .resizable()
                            .frame(width: 130, height: 130)
                    }
                }
                
                HStack {
                    NavigationLink(destination:comboSkinView()){
                        Image("comboskin")
                            .resizable()
                            .frame(width: 130, height: 130)
                    }
                    NavigationLink(destination:NormalView()){
                        Image("normalskin")
                            .resizable()
                            .frame(width: 130, height: 130)
                        
                    }
                }
                    
                    HStack {
                        NavigationLink(destination:sensitiveView()){
                            Image("sensitive")
                                .resizable()
                                .frame(width: 130, height: 130)
                        }
                    }
                    
                    .padding()
                
            }
        }
        }
    }

#Preview {
    SwiftUIView()
}

