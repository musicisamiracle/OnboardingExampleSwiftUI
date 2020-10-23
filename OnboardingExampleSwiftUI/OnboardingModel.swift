//
//  OnboardingModel.swift
//  OnboardingExampleSwiftUI
//
//  Created by Dane Thomas on 10/16/20.
//

import Foundation

struct OnboardingModel: Equatable {
    let backgroundImageName: String
    let systemImageName: String
    let title: String
    let body: [String]
    let buttonTitle: String
    
    static let first = OnboardingModel(backgroundImageName: "bg1", systemImageName: "location.fill", title: "First Onboarding Screen", body: ["Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."], buttonTitle: "First Button")
    static let second = OnboardingModel(backgroundImageName: "bg2", systemImageName: "sun.max.fill", title: "Second Onboarding Screen", body: ["Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."], buttonTitle: "Second Button")
    static let third = OnboardingModel(backgroundImageName: "bg3", systemImageName: "car.fill", title: "Third Onboarding Screen", body: ["Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.", "Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.", "Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem."], buttonTitle: "3rd Button")
}
