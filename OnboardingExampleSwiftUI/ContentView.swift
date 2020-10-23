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
        ZStack {
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
                    }
                    .foregroundColor(.white)
                }
                .padding(20.0)
                .background(Color.black.opacity(0.7))
                .cornerRadius(10)
            }
            .padding(EdgeInsets(top: 0, leading: 15, bottom: 20, trailing: 15))
        }
        .background(Image(viewModel.onboardingModel.backgroundImageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill).ignoresSafeArea())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: OnboardingViewModel(onboardingModel: .second))
            
    }
}
