//
//  ContentView.swift
//  iOS 15 Alerts
//
//  Created by Stewart Lynch on 2021-07-25.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert1 = false
    @State private var showAlert2 = false
    @State private var showAlert3 = false
    @StateObject private var viewModel = ViewModel()
    var body: some View {
        ZStack {
            VStack {
                Button("Title Only") {
                    showAlert1.toggle()
                }
                .alert("System Alert", isPresented: $showAlert1) {
                    Button("OK", role: .cancel) {
                        
                    }
                }
                Button("Single Button (Title and Message)") {
                    showAlert2.toggle()
                }
                .alert("Serious Warning", isPresented: $showAlert2) {
                    Button("EXIT APP", role: .destructive) {
                        // Perform cleanup
                    }
                } message: {
                    Text("This is serious.  Take note:")
                }
                
                Button("Two Buttons (no message)") {
                    showAlert3.toggle()
                }
                .alert("What do you prefer?", isPresented: $showAlert3) {
                    Button("Forget it", role: .cancel) {
                        
                    }
                    Button("Ice Cream") {
                        
                    }
                    Button("Candy") {
                        
                    }
                } message: {
                    Text("Can't be on a diet")
                }
                Button("Save File") {
                    viewModel.save()
                }
                .alert(viewModel.response?.title ?? "", isPresented: $viewModel.showSaveAlert, presenting: viewModel.response) { response in
                    switch response.error {
                    case .none:
                        Button("OK", role: .cancel) {
                            
                        }
                    case .error:
                        Button("Retry") {
                            viewModel.save()
                        }
                    }
                }
                Spacer()
                Image("computer-work-4")
                    .resizable()
                    .scaledToFit()
                    .padding()
                Spacer()
            }
            .padding()
            .buttonStyle(.creaTECHButtonStyle)
            .navigationBarTitle("iOS 15 Alerts")
            if viewModel.isLoading {
                CustomProgressView(message: "Saving file.")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
