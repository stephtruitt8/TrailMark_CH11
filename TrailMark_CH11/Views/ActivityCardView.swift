//
//  ActivityCardView.swift
//  TrailMark_CH11
//
//  Created by Stephen Truitt on 10/14/26.
//


import SwiftUI

struct ActivityCardView: View {

    let title: String
    let value: String
    let icon: String
    let cardColor: Color
    let iconColor: Color

    var body: some View {

        HStack(spacing: 20) {

            // Activity icon
            Image(systemName: icon)
                .font(.system(size: 30))
                .foregroundStyle(.white)
                .frame(width: 65, height: 65)
                .background(iconColor)
                .clipShape(
                    RoundedRectangle(cornerRadius: 18)
                )

            // Activity information
            VStack(alignment: .leading, spacing: 6) {

                Text(title)
                    .font(.headline)
                    .foregroundStyle(.secondary)
                    .underline()

                Text(value)
                    .font(.system(size: 28, weight: .bold))
                    .foregroundStyle(.primary)

            }

            Spacer()
        }
        .padding(20)
        .frame(maxWidth: .infinity)
        .background(cardColor)
        .clipShape(
            RoundedRectangle(cornerRadius: 24)
        )
    }
}

#Preview {
    ActivityCardView(title: "Steps", value: "9,000", icon: "figure.walk", cardColor: .orange, iconColor: .white)
}
