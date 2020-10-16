//
//  OnboardingViewModel.swift
//  OnboardingExampleSwiftUI
//
//  Created by Dane Thomas on 10/16/20.
//

import Foundation

class OnboardingViewModel: ObservableObject {
    @Published var onboardingModel: OnboardingModel
    
    init(onboardingModel: OnboardingModel) {
        self.onboardingModel = onboardingModel
    }
}
