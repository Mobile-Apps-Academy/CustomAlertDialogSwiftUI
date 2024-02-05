//
//  ContentView.swift
//  CustomAlertDialog
//
//  Created by Javid Shaikh on 04/02/24.
//

// Hello All, Welcome to Mobile Apps Academy
// In this video, We'll develop a custom alert



import SwiftUI

struct ContentView: View {
    
    @State var presentAlert = false
    
    var body: some View {
        ZStack {
            Button(action: {
                withAnimation {
                    presentAlert.toggle()
                }
            }, label: {
                Text("Show Custom Alert")
            })
            
            if presentAlert {
                CustomAlertDialog(title: "Error", message: "Something went wrong, Please try again later..", positiveButtonTitle: "OK", negativeButtonTitle: "Cancel")
                    .makeButtonsVertical(false)
                    .onNegativeButtonTap {
                        presentAlert.toggle()
                    }
                    .onPositiveButtonTap {
                        presentAlert.toggle()
                    }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
