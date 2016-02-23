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
    
    @IBAction func onClickedAddImg(sender: AnyObject) {
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    
    @IBAction func onClickedAddMovie(sender: AnyObject) {
        
    }

    

}
