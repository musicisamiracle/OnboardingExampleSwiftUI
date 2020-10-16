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
            VStack {
                Spacer()
                ZStack {
                    HStack {
                        VStack(alignment: .leading) {
                            Image(systemName: "location.fill")
                            Text(viewModel.onboardingModel.title)
                            Text("more text")
                            Text("second line of text that is much longer and longer and longer")
                            Button("button title") {
                                print("button clicked")
                            }
                        }
                        Spacer()
                    }
                    .foregroundColor(.white)
                }
                .padding()
                .background(Color.black.opacity(0.8))
                .cornerRadius(10)
            }
            .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
        }
        .background(Image(viewModel.onboardingModel.backgroundImageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill).ignoresSafeArea())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: OnboardingViewModel(onboardingModel: .first))
            
    }
}
