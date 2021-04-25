//
//  FaturaVC.swift
//  ValorantGaleriProjesi
//
//  Created by Boran Akova on 18.05.2020.
//  Copyright © 2020 Boran Akova. All rights reserved.
//

import UIKit







class Kiralik: UIViewController{
    
   

    @IBOutlet weak var kiraad: UITextField!
    

    @IBOutlet weak var kirasoyad: UITextField!
    
    
    @IBOutlet weak var kiratc: UITextField!
    
    
    @IBOutlet weak var kiratelno: UITextField!
    
    
    @IBOutlet weak var kiraplaka: UITextField!
    
    
    @IBOutlet weak var kirafiyat: UITextField!
    
    //Kira talebi için girilen fatura bilgilerinin sisteme yönlendirilmesi için sağlanacak bağlantı
    @IBAction func KiraTalebi(_ sender: UIButton)
    {
    
        

         var ad1 :  NSString = kiraad.text as! NSString
         var soyadi1 :  NSString = kirasoyad.text as! NSString
         var tcno1 :  NSString = kiratc.text as! NSString
         var tel1 :  NSString = kiratelno.text as! NSString
         var plaka1:  NSString = kiraplaka.text as! NSString
         var fiyat1 :  NSString = kirafiyat.text as! NSString
        
      
        if ( ad1.isEqual(to: "") && tel1.isEqual(to: "")) {
            
                       let alert = UIAlertController(title: "Araç Kiralanamadı", message:" Lütfen fatura bilgilerini giriniz " , preferredStyle: .alert)
                       alert.addAction(UIAlertAction(title : "Tamam" , style: .default,handler : nil))
                       self.present(alert,animated: false)
            
        }
        
        
        else {
        
        var post:NSString = "madi=\(ad1)&msoyadi=\(soyadi1)&mtc=\(tcno1)&mtelNo=\(tel1)&plaka=\(plaka1)&fiyat=\(fiyat1)" as NSString
                            
                            
                                       NSLog("PostData: %@",post);
                            
               var postData1:NSData = post.data(using: String.Encoding.ascii.rawValue)! as NSData
                            
               var postLength1:NSString = String( postData1.length ) as NSString
                           
                       // This url could be a your remote Restful API url.
                       // Change yourApiProvider text for yourself.
                       let url = URL(string: "http://www.yourprovider.com/api/insertFaturaKirala.php")!
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
                                               let alert = UIAlertController(title: "Fatura Oluşturuldu", message: "Aracınız, girmiş olduğunuz bilgiler doğrultusunda yetkili kişiye kiralanmıştır", preferredStyle: .alert)
                                            alert.addAction(UIAlertAction(title: "Geri Dön", style: .cancel, handler:{(action) -> Void in
                                               self.performSegue(withIdentifier: "AEV2", sender: self)}
                                        
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
    
    
                        
          
             
    
            
            override func viewDidLoad() {
                    super.viewDidLoad()
                
                
               
                    // Do any additional setup after loading the view.
                }
            
            

      
        

        
        @IBAction func geridon(_ sender: UIButton) {
              self.dismiss(animated: true, completion: nil)
        }
        
        
        
    }
    

    
    

    
    
    
    

