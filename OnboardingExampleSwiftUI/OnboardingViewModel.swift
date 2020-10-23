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
    
    func proceedToNextScreen() {
        switch self.onboardingModel {
        case .first:
            self.onboardingModel = .second
        case .second:
            self.onboardingModel = .third
        case .third:
            self.onboardingModel = .first
        default:
            self.onboardingModel = .first
        }
        
    }
}
