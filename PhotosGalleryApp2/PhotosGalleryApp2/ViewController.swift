//
//  ViewController.swift
//  PhotosGalleryApp2
//
//  Created by Nitesh on 10/24/14.
//  Copyright (c) 2014 Nitesh. All rights reserved.
//

import UIKit
let reuseIdentifier = "PhotoCell"

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{

    @IBAction func btnCamera(sender: AnyObject) {
        
    }
    

    @IBAction func btnPhotoAlbum(sender: AnyObject) {
    }
    
    
    @IBOutlet var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //UICollectionViewDataSource methods. 
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return 1;
        
    }
    
    // The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        let cell: UICollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath ) as UICollectionViewCell
        
            cell.backgroundColor = UIColor.redColor()
        return cell
        
    }
    


}

