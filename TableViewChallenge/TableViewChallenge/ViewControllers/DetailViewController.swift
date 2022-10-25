//
//  DetailViewController.swift
//  TableViewChallenge
//
//  Created by Anderson Sales on 24/10/22.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var flagsImageView: UIImageView!
    
    var imageToLoad: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        if let image = imageToLoad {
            flagsImageView.image = UIImage(named: image)
            //flagsImageView.layer.borderColor = UIColor.black.cgColor
            //flagsImageView.layer.borderWidth = 1
            title = imageToLoad?.uppercased()
        } else {
            title = "No image found!"
        }
        
        //Creation of a navigation item
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.hidesBarsOnTap = false
    }
    
    @objc func shareTapped(){
        //It is needed to go to the file info.plist (right click -> add row) -> privacy - Photo Library Addition....
        guard let image = flagsImageView.image?.jpegData(compressionQuality: 1) else {
            print("No image found")
            return
        }
        let vc = UIActivityViewController(activityItems: [image], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true)
    }
}
