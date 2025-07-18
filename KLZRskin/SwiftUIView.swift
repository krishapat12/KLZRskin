import SwiftUI
struct SwiftUIView: View {
    @State private var showMoreInfo = false
    var body: some View {
        
        NavigationStack{
            VStack{
                VStack {
                    Text("Skin Type Quiz")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.769, saturation: 0.45, brightness: 0.435))
                        .padding(.top, 5.0)
                    Text("Start by washing your face with a gentle cleanser and wait 15 - 30 minutes. Click the icon that matches what you see.")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 0.709, green: 0.645, blue: 0.749))
                        .padding(.all, 7.0)
                    Button(action: {
                        withAnimation {
                            showMoreInfo.toggle()
                        }
                    }) {
                        HStack {
                            Text("What to look for in a gentle cleanser")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundColor(Color(hue: 0.354, saturation: 0.829, brightness: 0.357))
                            Image(systemName: showMoreInfo ? "chevron.up" : "chevron.down")
                                .foregroundColor(Color(hue: 0.394, saturation: 0.833, brightness: 0.327))
                        }
                        .padding(.vertical, 4)
                    }
                    if showMoreInfo {
                        Text("When looking for a gentle cleanser, look for products specifically labeled as gentle, fragrance-free, or suitable for sensitive skin.")
                            .font(.subheadline)
                            .fontWeight(.regular)
                            .foregroundColor(Color(hue: 0.325, saturation: 0.319, brightness: 0.503))
                            .padding(.bottom, 8)
                            .transition(.opacity)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                    }
                    Text("If you have a tendency to break out or develop rashes easily and notice redness, itching, burning, or stinging, click on the sensitive skin icon. ")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(hue: 0.343, saturation: 0.287, brightness: 0.659))
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
}
#Preview {
  SwiftUIView()
}
