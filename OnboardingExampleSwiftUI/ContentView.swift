//
//  ContentView.swift
//  OnboardingExampleSwiftUI
//
//  Created by Dane Thomas on 10/16/20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: OnboardingViewModel

    var body: some View {
        ZStack{
            GeometryReader { proxy in
                let sidePadding = proxy.size.width * 0.06
                VStack {
                    Spacer()
                    ZStack {
                        VStack(alignment: .leading, spacing: 10) {
                            Image(systemName: viewModel.onboardingModel.systemImageName)
                            Text(viewModel.onboardingModel.title)
                                .font(Font.system(size: 24).weight(.black))
                                .fixedSize(horizontal: false, vertical: true)
                            ForEach(viewModel.onboardingModel.body, id: \.self) { (text) in
                                Text(text)
                                    .font(Font.system(size: 15).weight(.medium))
                            }
                            Button(viewModel.onboardingModel.buttonTitle) {
                                self.viewModel.proceedToNextScreen()
                            }
                            .buttonStyle(OnboardingButtonStyle())
                            .padding(.top, 10)
                        }
                        .foregroundColor(.white)
                    }
                    .padding(20.0)
                    .background(Color.black.opacity(0.7))
                    .cornerRadius(20)
                    .animation(.easeOut)
                }
                .padding(EdgeInsets(top: 0, leading: sidePadding, bottom: 20, trailing: sidePadding))
            }
        }
        .background(BackgroundImage(imageName: viewModel.onboardingModel.backgroundImageName)
                        .ignoresSafeArea())
        .animation(.default)
    }
}

struct BackgroundImage: View {
    
    var imageName: String

    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(viewModel: OnboardingViewModel(onboardingModel: .first))
        }
            
    }
}
