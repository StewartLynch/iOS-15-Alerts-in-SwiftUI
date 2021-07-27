//
//  ViewModel.swift
//  ViewModel
//
//  Created by Stewart Lynch on 2021-07-25.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var response: ResponseData?
    @Published var isLoading = false
    var showSaveAlert = false
    
    func save() {
        isLoading.toggle()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.isLoading.toggle()
            self.showSaveAlert.toggle()
            if Bool.random() {
                // success case
                self.response = ResponseData(title: "Success", error: .none)
            } else {
                // error case
                self.response = ResponseData(title: "Saving error", error: .error("Unable to save!"))
            }
        }
    }
}
