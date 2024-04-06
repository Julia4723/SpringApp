//
//  DataStore.swift
//  SpringApp
//
//  Created by user on 04.04.2024.
//

import SpringAnimation

final class DataStore {
    
    static let shared = DataStore()
    
    let presets = [
        "pop",
        "slideLeft",
        "slideRight",
        "slideDown",
        "fadeIn",
        "fadeOutIn",
        "zoomIn",
        "shake",
        "morph",
        "squeeze",
        "flash",
        "wobble"
    ]
    
    let curves = [
        "easeIn",
        "easeOut",
        "easeInOut",
        "linear",
        "spring",
        "easeInBack",
        "easeInOutCirc",
        "easeInOutQuint"
    ]
    
    private init() {}
}
