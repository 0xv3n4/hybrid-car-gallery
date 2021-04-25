//
//  FaturaVCS.swift
//  ValorantGaleriProjesi
//
//  Created by Boran Akova on 18.05.2020.
//  Copyright © 2020 Boran Akova. All rights reserved.
//

import UIKit

class Satilik: UIViewController {
    
    
    @IBOutlet weak var ad: UITextField!
    
    @IBOutlet weak var soyad: UITextField!
    @IBOutlet weak var tc: UITextField!
    
    
    @IBOutlet weak var tel: UITextField!
    
    @IBOutlet weak var plakasi: UITextField!
    
    @IBOutlet weak var fiyati: UITextField!
    
    
    //Satın Alım talebi için girilen fatura bilgilerinin sisteme yönlendirilmesi için sağlanacak bağlantı
    
    @IBAction func TalepGonder(_ sender: UIButton) {
        
      
        
        var adi :  NSString = ad.text as! NSString
        var soyadi :  NSString = soyad.text as! NSString
        var tcno :  NSString = tc.text as! NSString
        var telno :  NSString = tel.text as! NSString
        var plaka :  NSString = plakasi.text as! NSString
        var fiyat :  NSString = fiyati.text as! NSString
        
     
        if ( adi.isEqual(to: "") && telno.isEqual(to: "")) {
                   
                              let alert = UIAlertController(title: "Araç Satılamadı", message:" Lütfen fatura bilgilerini giriniz " , preferredStyle: .alert)
                              alert.addAction(UIAlertAction(title : "Tamam" , style: .default,handler : nil))
                              self.present(alert,animated: false)
                   
               }
        
        else {
        
        var post:NSString = "madi=\(adi)&msoyadi=\(soyadi)&mtc=\(tcno)&mtelNo=\(telno)&plaka=\(plaka)&fiyat=\(fiyat)" as NSString
                     
                     
                                NSLog("PostData: %@",post);
                     
        var postData1:NSData = post.data(using: String.Encoding.ascii.rawValue)! as NSData
                     
        var postLength1:NSString = String( postData1.length ) as NSString
                     
                 // This url could be a your remote Restful API url.
                 // Change yourApiProvider text for yourself.
                 let url = URL(string: "http://www.yourApiProvider.com/api/insertFaturaSat.php")!
                 var request = URLRequest(url: url)
                     request.httpMethod = "POST"
                     request.httpBody = postData1 as Data
                     request.setValue(postLength1 as String, forHTTPHeaderField: "Content-Length")
                                request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
                                request.setValue("application/json", forHTTPHeaderField: "Accept")
                     
                       let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
                                              if let error = error {
                                                  print("error: \(error)")
                                              } else {
                                                  if let response = response as? HTTPURLResponse {
                                                      print("statusCode: \(response.statusCode)")
                                                  }
                                                  if let data = data, let dataString = String(data: data, encoding: .utf8) {
                                                      print("data: \(dataString)")
                                                      if dataString == "1"{
                                                          DispatchQueue.main.async
                                                              {
                                                                  let alert = UIAlertController(title: "Fatura Oluşturuldu", message: "Aracınız, girmiş olduğunuz bilgiler doğrultusunda yetkili kişiye satılmıştır", preferredStyle: .alert)
                                                               alert.addAction(UIAlertAction(title: "Geri Dön", style: .cancel, handler:{(action) -> Void in
                                                                  self.performSegue(withIdentifier: "AEV3", sender: self)}
                                                           
                                                                  ))
                                                                  self.present(alert, animated: true, completion: nil)
                                                                  
                                                                 
                                                              }
                                                      }else if dataString == "0"{
                                                          DispatchQueue.main.async
                                                              {
                                                                  let alert = UIAlertController(title: "Fatura Oluşturulamadı!", message: "Girdiğiniz bilgileri kontrol ediniz.", preferredStyle: .alert)
                                                                  alert.addAction(UIAlertAction(title: "TAMAM", style: .cancel, handler: {(action) -> Void in
                                                                  self.performSegue(withIdentifier: "AEV2", sender: self)}))
                                                                  self.present(alert, animated: true, completion: nil)
                                                               
                                                              }
                                                          
                                                      }else if dataString == "-1" {
                                                          DispatchQueue.main.async
                                                                                 {
                                                                                     let alert = UIAlertController(title: "Kullanıcı oluşturulamadı.", message: "Müşteri bilgilerinizi kontrol ediniz.", preferredStyle: .alert)
                                                                                     alert.addAction(UIAlertAction(title: "TAMAM", style: .cancel, handler: nil))
                                                                                     self.present(alert, animated: true, completion: nil)
                                                                                 }
                                                          
                                                      }
                                                      
                                                      
                                                  }
                                              }
                                          }
                                          task.resume()
                           
        
                         
                                           }

    }
        
        
        
        
        
        
        
        @IBAction func Don(_ sender: UIButton) {
               self.dismiss(animated: true, completion: nil)
           }
           
           override func viewDidLoad() {
               super.viewDidLoad()
           

              
           }
           
        
       
    }
    
    
   

    


