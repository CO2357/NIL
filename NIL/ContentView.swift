//
//  ContentView.swift
//  NIL
//
//  Created by T Krobot on 6/7/24.
//

import SwiftUI

struct OnboardingView: View {
    @State private var height: String = ""
        @State private var weight: String = ""
        @State private var gender: String = ""
        @State private var activityLevel: String = ""
        @State private var age: String = ""

        var body: some View {
            VStack {
                Text("Onboarding")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 40)

                Text("Please enter your personal information:")
                    .font(.subheadline)
                    .padding(.top, 20)

                VStack(alignment: .leading, spacing: 10) {
                    TextField("Height", text: $height)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.decimalPad)
                    
                    TextField("Weight", text: $weight)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.decimalPad)
                    
                    TextField("Gender", text: $gender)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TextField("Activity level", text: $activityLevel)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TextField("Age", text: $age)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.numberPad)
                }
                .padding(.horizontal, 30)
                .padding(.top, 20)

                Text("or")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.top, 20)

                Button(action: {
                    // Action for "Continue with Health"
                }) {
                    Text("Continue with Health")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal, 30)

                Button(action: {
                    // Action for "Submit"
                }) {
                    Text("Submit")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                }
                .padding(.horizontal, 30)
                .padding(.top, 20)

                Spacer()
            }
        }
    }
#Preview {
    OnboardingView()
}
