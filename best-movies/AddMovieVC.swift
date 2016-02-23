//
//  AddMovieVC.swift
//  best-movies
//
//  Created by Eric Klose on 2/23/16.
//  Copyright © 2016 Eric Klose. All rights reserved.
//

import UIKit

class AddMovieVC: UIViewController {
    
    @IBOutlet weak var movieTitle: UITextField!
    @IBOutlet weak var imdbLink: UITextField!
    @IBOutlet weak var imdbDesc: UITextField!
    @IBOutlet weak var personalDesc: UITextField!
    @IBOutlet weak var movieImg: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func onClickedAddImg(sender: AnyObject) {
        
    }
    
    
    @IBAction func onClickedAddMovie(sender: AnyObject) {
        
    }

}
