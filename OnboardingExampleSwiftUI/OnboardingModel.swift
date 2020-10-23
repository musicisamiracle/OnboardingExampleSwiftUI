//
//  OnboardingModel.swift
//  OnboardingExampleSwiftUI
//
//  Created by Dane Thomas on 10/16/20.
//

import Foundation

struct OnboardingModel: Equatable {
    let backgroundImageName: String
    let title: String
    
    static let first = OnboardingModel(backgroundImageName: "bg1", title: "First Onboarding Screen")
    static let second = OnboardingModel(backgroundImageName: "bg2", title: "Second Onboarding Screen")
    static let third = OnboardingModel(backgroundImageName: "bg3", title: "Third Onboarding Screen")
}
