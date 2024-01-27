//
//  springApp.swift
//  HW-3.01_SpringAnimation
//
//  Created by Dmitry Parhomenko on 27.01.2024.
//

import Foundation

struct SpringApp {
    let minIndex: Int
    let maxIndex: Int
    let present: [String]
    let curve: [String]
    
    static func getSpringApp() -> SpringApp {
        SpringApp (
            minIndex: 1,
            maxIndex: 6,
            present: ["pop",
                      "slideLeft",
                      "slideRight",
                      "slideDown",
                      "slideUp",
                      "squeezeLeft",
                      "squeezeRight",
                      "squeezeDown",
                      "squeezeUp",
                      "fadeIn",
                      "fadeOut",
                      "fadeOutIn",
                      "fadeInLeft",
                      "fadeInRight",
                      "fadeInDown",
                      "fadeInUp",
                      "zoomIn",
                      "zoomOut",
                      "fall",
                      "shake",
                      "flipX",
                      "flipY",
                      "morph",
                      "squeeze",
                      "flash",
                      "wobble",
                      "swing"
                     ],
            
            curve: ["easeIn",
                    "easeOut",
                    "easeInOut",
                    "linear",
                    "spring",
                    "easeInSine",
                    "easeOutSine",
                    "easeInOutSine",
                    "easeInQuad",
                    "easeOutQuad",
                    "easeInOutQuad",
                    "easeInCubic",
                    "easeOutCubic",
                    "easeInOutCubic",
                    "easeInQuart",
                    "easeOutQuart",
                    "easeInOutQuart",
                    "easeInQuint",
                    "easeOutQuint",
                    "easeInOutQuint",
                    "easeInExpo",
                    "easeOutExpo",
                    "easeInOutExpo",
                    "easeInCirc",
                    "easeOutCirc",
                    "easeInOutCirc",
                    "easeInBack",
                    "easeOutBack",
                    "easeInOutBack"

                   ]
        )
    }
}

