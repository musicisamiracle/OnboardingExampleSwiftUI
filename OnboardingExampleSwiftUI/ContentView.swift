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
        Image(viewModel.onboardingModel.backgroundImageName)
            .resizable()
            .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: OnboardingViewModel(onboardingModel: .first))
            
    }
}
