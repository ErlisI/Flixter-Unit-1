//
//  MoviesDetailsGridViewController.swift
//  Flixter - Assigment 1
//
//  Created by Erlis Ibraimi on 19.2.21.
//

import UIKit
import AlamofireImage

class MoviesDetailsGridViewController: UIViewController {
    
    @IBOutlet weak var collectionBackdropImageView: UIImageView!
    @IBOutlet weak var collectionPosterView: UIImageView!
    @IBOutlet weak var collectionTitleLabel: UILabel!
    @IBOutlet weak var collectionSynopsisLabel: UILabel!
    

    var movie: [String:Any]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionTitleLabel.text = movie["title"] as? String
        collectionTitleLabel.sizeToFit()
        
        collectionSynopsisLabel.text = movie["overview"] as? String
        collectionSynopsisLabel.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        
        let posterPath = movie ["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        collectionPosterView.af.setImage(withURL: posterUrl!)
        
        let backdropPath = movie ["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        
        collectionBackdropImageView.af.setImage(withURL: posterUrl!)
    }

}
