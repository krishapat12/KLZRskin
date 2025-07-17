import SwiftUI

struct SkinTypeQuizView: View {
    @State private var showMoreInfo = false

    var body: some View {
        ZStack {
            Color(red: 250/255, green: 246/255, blue: 242/255)
                .ignoresSafeArea()

            ScrollView {
                VStack(spacing: 16) {
                    Text("Skin Type Quiz")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.top)

                    Text("Start by washing your face with a gentle cleanser and wait 15–30 minutes. Click the icon that matches what you see.")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)

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
                    }

                    if showMoreInfo {
                        Text("When looking for a gentle cleanser, choose one labeled as gentle, fragrance-free, or suitable for sensitive skin.")
                            .font(.subheadline)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                            .transition(.opacity)
                    }

                    Text("If you tend to break out, develop rashes easily, or notice redness, itching, burning, or stinging, click on the sensitive skin icon.")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)

                    VStack(spacing: 16) {
                        HStack(spacing: 20) {
                            skinTypeImage("dryskin")
                            skinTypeImage("oilyskin")
                        }

                        HStack(spacing: 20) {
                            skinTypeImage("comboskin")
                            skinTypeImage("normalskin")
                        }

                        HStack {
                            skinTypeImage("sensitive")
                        }
                    }
                }
                .padding()
            }
        }
    }

    private func skinTypeImage(_ name: String) -> some View {
        Image(name)
            .resizable()
            .frame(width: 130, height: 130)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    SkinTypeQuizView()
}

