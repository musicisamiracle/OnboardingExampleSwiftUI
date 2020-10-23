//
//  OnboardingButtonStyle.swift
//  OnboardingExampleSwiftUI
//
//  Created by Dane Thomas on 10/23/20.
//

import SwiftUI

struct OnboardingButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
            configuration.label
                .frame(maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .background(Color.green)
                .cornerRadius(40)
    }
}

struct OnboardingButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button("testTitle") {
            
        }
        .buttonStyle(OnboardingButtonStyle())
    }
}
