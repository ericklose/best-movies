//
//  MovieCell.swift
//  best-movies
//
//  Created by Eric Klose on 2/23/16.
//  Copyright © 2016 Eric Klose. All rights reserved.
//

import Foundation
import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var imdbLink: UILabel!
    @IBOutlet weak var personalDesc: UILabel!
    @IBOutlet weak var movieImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        movieImg.layer.cornerRadius = movieImg.frame.size.width / 2
        movieImg.clipsToBounds = true
        
}
    
    func configureCell(movie: Movie) {
        movieTitle.text = movie.title
        movieImg.image = movie.getMovieImg()
        imdbLink.text = movie.imdbLink
        personalDesc.text = movie.personalDesc
    }


}