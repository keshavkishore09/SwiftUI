//
//  CaptureView.swift
//  Instagram
//
//  Created by Keshav Kishore on 05/07/22.
//

import Foundation
import SwiftUI



struct CaptureView: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = UIImagePickerController
    
    @Binding var isShown: Bool
    @Binding var image: Image?
    @Binding var isUsingCamera: Bool
    
    init(isShown: Binding<Bool>, image: Binding<Image?>, useCamera: Binding<Bool>) {
        _isShown = isShown
        _image = image
        _isUsingCamera = useCamera
    }
    
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(isShown: $isShown, image: $image, isUsingCamera: $isUsingCamera)
    }
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<CaptureView>) -> UIImagePickerController {
        
    let picker = UIImagePickerController()
        picker.sourceType =  isUsingCamera ? .camera : .photoLibrary
        picker.delegate = context.coordinator
        return  picker
    
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        // Do nothing
    }
    
}



class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    
    @Binding var isShown: Bool
    @Binding var image: Image?
    @Binding var isUsingCamera: Bool
    
    init(isShown: Binding<Bool>, image: Binding<Image?>, isUsingCamera: Binding<Bool>) {
        _isShown = isShown
        _image =  image
        _isUsingCamera = isUsingCamera
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        // User cancelled
        isShown = false
        
        
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let uiImage = info[UIImagePickerController.InfoKey.originalImage]  as? UIImage else {return}
        image = Image(uiImage: uiImage)
        isShown = false
    }
    
    
}
