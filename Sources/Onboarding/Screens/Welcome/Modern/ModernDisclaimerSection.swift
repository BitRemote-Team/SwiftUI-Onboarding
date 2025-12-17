//
//  ModernDisclaimerSection.swift
//
//  Created by James Sedlacek on 2/15/25.
//

import SwiftUI

@MainActor
struct ModernDisclaimerSection: View {
    let termsOfServiceURL: URL
    let privacyPolicyURL: URL

    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            Text("By continuing you agree to our")
                .font(.footnote)
                .foregroundStyle(.secondary)

            HStack(spacing: 4) {
                Link("terms of service", destination: termsOfServiceURL)
                    .font(.footnote.weight(.semibold))
                Text("and")
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                Link("privacy policy", destination: privacyPolicyURL)
                    .font(.footnote.weight(.semibold))
            }
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .padding(.top, 4)
    }
}

#Preview {
    ModernDisclaimerSection(
        termsOfServiceURL: URL(string: "https://example.com/terms")!,
        privacyPolicyURL: URL(string: "https://example.com/privacy")!
    )
}
