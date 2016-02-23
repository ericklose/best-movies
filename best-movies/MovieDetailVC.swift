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
  
        var movies = [Movie]()

    override func viewDidLoad() {
        super.viewDidLoad()

        let app = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = app.managedObjectContext
        let entity = NSEntityDescription.entityForName("Movie", inManagedObjectContext: context)!
        let movie = Movie(entity: entity, insertIntoManagedObjectContext: context)
        let fetchRequest = NSFetchRequest(entityName: "Movie")
        
        movieTitle.text = movie.title
        movieImg.image = movie.getMovieImg()
        imdbLink.text = movie.imdbLink
        personalDesc.text = movie.personalDesc
        imdbDesc.text = movie.imdbDesc

        
        do {
            let results = try context.executeFetchRequest(fetchRequest)
            self.movies = results as! [Movie]
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
    }



}
