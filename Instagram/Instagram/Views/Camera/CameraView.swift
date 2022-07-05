//
//  CameraView.swift
//  Instagram
//
//  Created by Keshav Kishore on 05/07/22.
//

import SwiftUI

struct CameraView: View {
    
    @State var isShowingPicker = false
    @State var isUsingCamera = false
    @State var image: Image? = nil
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    image?
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 300, alignment: .center)
                    
                    
                    Button {
                        print("Take Photo")
                        self.isUsingCamera = true
                        self.isShowingPicker.toggle()
                    } label: {
                        Text("Take Photo")
                    } .padding(100)
                    
                    Button {
                        print("Photo Library")
                        self.isUsingCamera = false
                        self.isShowingPicker.toggle()
                    } label: {
                        Text("Photo Library")
                    } .padding(100)
                }
                
                if (isShowingPicker) {
                    CaptureView(isShown: $isShowingPicker, image: $image, useCamera: $isUsingCamera)
                }

            } .navigationTitle("Camera")
        }
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}
