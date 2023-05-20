//
//  ViewController.swift
//  secim2023
//
//  Created by Burak Eryavuz on 20.05.2023.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var erdoganOySayisi: UILabel!
    @IBOutlet weak var kilicdarogluOySayisi: UILabel!
    @IBOutlet weak var toplamOySayisi: UILabel!
    
    var erdoganOy : Int = 0
    var kilicdarogluOy : Int = 0
    var toplamOy : Int = 0
    
    var myAlert = UIAlertController(title: "Hata", message: "Oy sayısı 0'dan az olamaz", preferredStyle: .alert)
    
    let ok = UIAlertAction(title: "Tamam", style: .cancel)
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myAlert.addAction(ok)
    }
    
    
    
    @IBAction func erdoganOyArttirButton(_ sender: UIButton) {
        erdoganOy += 1
        toplamOy += 1
        erdoganOySayisi.text = String(erdoganOy)
        toplamOySayisi.text = String(toplamOy)
    }
    
    
    @IBAction func erdoganOyAzaltButton(_ sender: UIButton) {
        
        
        if erdoganOy > 0 {
            erdoganOy -= 1
            toplamOy -= 1
            erdoganOySayisi.text = String(erdoganOy)
            toplamOySayisi.text = String(toplamOy)
        }
        else {
            self.present(myAlert, animated: true, completion: nil)
        }
    }
    
    
    @IBAction func KilicdarogluOyArttirButton(_ sender: UIButton) {
        kilicdarogluOy += 1
        toplamOy += 1
        kilicdarogluOySayisi.text = String(kilicdarogluOy)
        toplamOySayisi.text = String(toplamOy)
    }
    
    
    @IBAction func KilicdarogluOyAzaltButton(_ sender: UIButton) {
        
        if kilicdarogluOy > 0 {
            kilicdarogluOy -= 1
            toplamOy -= 1
            kilicdarogluOySayisi.text = String(kilicdarogluOy)
            toplamOySayisi.text = String(toplamOy)
        }
        else {
            self.present(myAlert, animated: true, completion: nil)
        }
    }
    
    @IBAction func sifirlaButton(_ sender: UIButton) {
        kilicdarogluOy = 0
        erdoganOy = 0
        toplamOy = 0
        kilicdarogluOySayisi.text = "0"
        erdoganOySayisi.text = "0"
        toplamOySayisi.text = "0"
    }
    
}

