//
//  MovieDetailVC.swift
//  best-movies
//
//  Created by Eric Klose on 2/23/16.
//  Copyright © 2016 Eric Klose. All rights reserved.
//

import UIKit
import CoreData

class MovieDetailVC: UIViewController, UINavigationControllerDelegate {
    
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var imdbLink: UILabel!
    @IBOutlet weak var imdbDesc: UILabel!
    @IBOutlet weak var personalDesc: UILabel!
    @IBOutlet weak var movieImg: UIImageView!
    
    var movies: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let theMovie = movies {
            //self.navigationItem.title = movies?.title
            movieTitle.text = theMovie.title
            movieImg.image = theMovie.getMovieImg()
            imdbDesc.text = theMovie.imdbDesc
            personalDesc.text = theMovie.personalDesc
        }
        
        
        
    }
    
    
    
}
