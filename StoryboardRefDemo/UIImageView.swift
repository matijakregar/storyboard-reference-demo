//
//  UIImageView.swift
//  StoryboardRefDemo
//
//  Created by Matija Kregar on 31/10/2016.
//  Copyright © 2016 Matija Kregar. All rights reserved.
//

import UIKit

// UIImageView extension that enables async image loading.

extension UIImageView {
    public func imageFromURL(_ url: URL) {
        
        URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) -> Void in
            if error != nil {
                print(error!)
                return
            }
            DispatchQueue.main.async(execute: { () -> Void in
                let image = UIImage(data: data!)
                self.image = image
            })
            
        }).resume()
    }}
