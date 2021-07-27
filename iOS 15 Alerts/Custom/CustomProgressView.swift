//
//  CustomProgressView.swift
//  CustomProgressView
//
//  Created by Stewart Lynch on 2021-07-25.
//

import SwiftUI

struct CustomProgressView: View {
    let message: String
    var body: some View {
        ZStack {
            Color(.systemBackground).opacity(0.4)
                .ignoresSafeArea()
            ProgressView(message)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(Color(.systemBackground)))
        }
            .shadow(radius: 10)
    }
}

struct CustomProgressView_Previews: PreviewProvider {
    static var previews: some View {
        CustomProgressView(message: "Saving File")
    }
}

