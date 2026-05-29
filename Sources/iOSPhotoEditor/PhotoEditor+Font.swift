//
//  PhotoEditor+Font.swift
//
//
//  Created by Mohamed Hamed on 6/16/17.
//
//

import Foundation
import UIKit

@MainActor
extension PhotoEditorViewController {
    
    // Resources don't load in main bundle we have to register the font
    func registerFont() {
        let url = Bundle.photoEditorResourceBundle.url(forResource: "icomoon", withExtension: "ttf")
        guard let fontURL = url,
              let fontDataProvider = CGDataProvider(url: fontURL as CFURL) else {
            print("Error Font file icomoon.ttf not found or could not be loaded in the package")
            return
        }
        
        guard let font = CGFont(fontDataProvider) else { return }
        var error: Unmanaged<CFError>?
        guard CTFontManagerRegisterGraphicsFont(font, &error) else {
            print("Warning Font registration failed or it might already be registered Description \(String(describing: error?.takeRetainedValue()))")
            return
        }
    }
}
