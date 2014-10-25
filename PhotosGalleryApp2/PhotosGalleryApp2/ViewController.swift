//
//  ViewController.swift
//  PhotosGalleryApp2
//
//  Created by Nitesh on 10/24/14.
//  Copyright (c) 2014 Nitesh. All rights reserved.
//

import UIKit
import Photos


let reuseIdentifier = "PhotoCell"
let albumName = "My App"

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    var albumFound : Bool =  false
    var assetCollection: PHAssetCollection!
    var photoAsset: PHFetchResult!

    @IBAction func btnCamera(sender: AnyObject) {
        
    }
    

    @IBAction func btnPhotoAlbum(sender: AnyObject) {
    }
    
    
    @IBOutlet var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Check if folder exists. If not create it. 
        
        let fetchOptions = PHFetchOptions()
        fetchOptions.predicate = NSPredicate(format:"title = %@", albumName)
        
        let collection = PHAssetCollection.fetchAssetCollectionsWithType(.Album, subtype: .Any, options: fetchOptions)
        
        if(collection.firstObject != nil){
            //found the album
            self.albumFound = true;
            self.assetCollection = collection.firstObject as PHAssetCollection
        } else{
            //create the folder.
            NSLog("\nFolder \"%n\"does not exist\nCreating now...", albumName)
            PHPhotoLibrary.sharedPhotoLibrary().performChanges({
                let request = PHAssetCollectionChangeRequest.creationRequestForAssetCollectionWithTitle(albumName)
                
                },completionHandler:{(success: Bool, error: NSError!) in
                    NSLog("Creation of folder", (success ? "Success" : "Error"))
                    self.albumFound = (success ? true:false)
            })
        }
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

