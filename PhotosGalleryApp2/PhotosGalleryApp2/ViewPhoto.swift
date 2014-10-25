//
//  ViewPhoto.swift
//  PhotosGalleryApp2
//
//  Created by Nitesh on 10/24/14.
//  Copyright (c) 2014 Nitesh. All rights reserved.
//

import UIKit

class ViewPhoto: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnCancel(sender: AnyObject) {
        println("Cancel")
        self.navigationController?.popToRootViewControllerAnimated(true)
    }

    @IBAction func btnExport(sender: AnyObject) {
        println("Export")
    }
    
    
    @IBAction func btnTrash(sender: AnyObject) {
        println("Trash")
    }
    
    @IBOutlet weak var imgView: UIImageView!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
