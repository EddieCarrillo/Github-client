//
//  SearchSettingsViewController.swift
//  GithubDemo
//
//  Created by my mac on 3/2/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class SearchSettingsViewController: UIViewController {
    
    var minStars = 5
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var rating: UILabel!
    
    @IBAction func onSlide(_ sender: Any) {
        minStars = Int(slider.value)
        rating.text = "\(minStars)"
        
    }
    
    
    var settings : GithubRepoSearchSettings?
    
    weak var delegate: SettingsPresentingViewControllerDelegate?
    
    
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        self.delegate?.didCancelSettings()
        dismiss(animated: true, completion: nil)
       
        
    }
    @IBAction func saveButtonTapped(_ sender: Any) {
        settings!.minStars = minStars
        self.delegate?.didSaveSettings(settings: settings!)
        dismiss(animated: true, completion: nil)
        
    }
    

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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

protocol SettingsPresentingViewControllerDelegate: class {
    func didSaveSettings(settings: GithubRepoSearchSettings)
    
    func didCancelSettings()
}
