//
//  BlueButtonStyle.swift
//  AlertBuilder
//
//  Created by Stewart Lynch on 2021-02-28.
//

import SwiftUI

struct CreaTECHButtonStyle: ButtonStyle {
    let sfImageName: String = "exclamationmark.triangle.fill"
    func makeBody(configuration: Configuration) -> some View {
        withAnimation {
            HStack {
                Image(systemName: sfImageName)
                configuration.label
            }
            .frame(width: 300)
            .padding(7)
            .background(RoundedRectangle(cornerRadius: 10).fill(Color(UIColor(named: "CTBlue")!)))
            .foregroundColor(.white)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
        }
    }
}


extension ButtonStyle where Self == CreaTECHButtonStyle {
    static var creaTECHButtonStyle: CreaTECHButtonStyle {
        CreaTECHButtonStyle()
    }
}
