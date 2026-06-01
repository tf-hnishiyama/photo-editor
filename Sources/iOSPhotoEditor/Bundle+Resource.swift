//
//  Bundle+Resource.swift
//  iOSPhotoEditor
//
//  Helper to resolve the correct bundle for resources across SPM and CocoaPods
//

import Foundation

private class BundleFinder {}

extension Bundle {
    static let photoEditorResourceBundle: Bundle = {
        #if SWIFT_PACKAGE
        return .module
        #else
        return Bundle(for: BundleFinder.self)
        #endif
    }()
}
