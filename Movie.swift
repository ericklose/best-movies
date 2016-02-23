//
//  Movie.swift
//  best-movies
//
//  Created by Eric Klose on 2/23/16.
//  Copyright © 2016 Eric Klose. All rights reserved.
//

import Foundation
import CoreData
import UIKit


class Movie: NSManagedObject {

    func setMovieImage(img: UIImage) {
        let data = UIImagePNGRepresentation(img)
        self.image = data
    }
    
    func getMovieImg() -> UIImage {
        let img = UIImage(data: self.image!)!
        return img
    }

}
