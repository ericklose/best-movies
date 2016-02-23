//
//  AddMovieVC.swift
//  best-movies
//
//  Created by Eric Klose on 2/23/16.
//  Copyright © 2016 Eric Klose. All rights reserved.
//

import UIKit
import CoreData

class AddMovieVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate  {
    
    @IBOutlet weak var movieTitle: UITextField!
    @IBOutlet weak var imdbLink: UITextField!
    @IBOutlet weak var imdbDesc: UITextField!
    @IBOutlet weak var personalDesc: UITextField!
    @IBOutlet weak var movieImg: UIImageView!

    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //movieImg.layer.cornerRadius = movieImg.frame.size.width / 2
        //movieImg.clipsToBounds = true
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
    }

    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        movieImg.image = image
    }
    
    @IBAction func onClickedAddImg(sender: AnyObject!) {
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    
    @IBAction func onClickedAddMovie(sender: AnyObject!) {
        if let title = movieTitle.text where title != "" {
            
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = app.managedObjectContext
            let entity = NSEntityDescription.entityForName("Movie", inManagedObjectContext: context)!
            let movie = Movie(entity: entity, insertIntoManagedObjectContext: context)
            movie.title = title
            movie.imdbLink = imdbLink.text
            movie.imdbDesc = imdbDesc.text
            movie.personalDesc = personalDesc.text
            movie.setMovieImage(movieImg.image!)
            
            context.insertObject(movie)
            
            do {
                try context.save()
            } catch {
                print("Could not save movie")
            }
            
            self.navigationController?.popViewControllerAnimated(true)
        }
        
    }

    

}
