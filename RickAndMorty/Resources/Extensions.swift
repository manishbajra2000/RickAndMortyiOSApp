//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Manish Harsha Bajracharya on 11/09/2024.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
