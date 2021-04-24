//
//  GirisVC.swift
//  ValorantGaleriProjesi
//
//  Created by Boran Akova on 14.05.2020.
//  Copyright © 2020 Boran Akova. All rights reserved.
//

import UIKit

class GirisVC: UIViewController {
 
    @IBOutlet weak var usernametf: UITextField!
    
    @IBOutlet weak var passwordtf: UITextField!
    
    // Bilgi Doğrulama Butonu
    @IBAction func GirisYapButonu(_ sender: UIButton) {
        
        
            var username : NSString = usernametf.text as! NSString
             var password : NSString = passwordtf.text as! NSString
            
            // Kullanıcı adı ya da Şifre "" (Boş mu )
            if ( username.isEqual(to: "") || password.isEqual(to: "") ) {
            
                       let alert = UIAlertController(title: "Giriş Başarısız", message:" Lütfen Kullanıcı Adı ve Şifre giriniz" , preferredStyle: .alert)
                       alert.addAction(UIAlertAction(title : "Tamam" , style: .default,handler : nil))
                       self.present(alert,animated: false)
            }
            else {
            // Girilen alanlardaki bilgilerin veritabanındaki bilgiler ile karşılaştırılması için gereken bağlantının kurulması
                var post:NSString = "username=\(username)&password=\(password)" as NSString
                
                           NSLog("PostData: %@",post);
                
                var postData:NSData = post.data(using: String.Encoding.ascii.rawValue)! as NSData
                
                var postLength:NSString = String( postData.length ) as NSString
                
            let url = URL(string: "http://www.allweun.com/api/userlogin.php")!
            var request = URLRequest(url: url)
            request.httpMethod = "POST"
                request.httpBody = postData as Data
                request.setValue(postLength as String, forHTTPHeaderField: "Content-Length")
                           request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
                           request.setValue("application/json", forHTTPHeaderField: "Accept")
                
                
            let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
                if let error = error {
                    print("error: \(error)")
                } else {
                    if let response = response as? HTTPURLResponse {
                        print("statusCode: \(response.statusCode)")
                    }
                    
             // Bağlantının başarılı döndürülmesi durumunda kullanıcıya olumlu bilgilendirilmenin görüntülenmesi.
                    if let data = data, let dataString = String(data: data, encoding: .utf8) {
                        print("data: \(dataString)")
                        if dataString == "1"{
                        DispatchQueue.main.async
                            {
                                let alert = UIAlertController(title: "Giriş Başarılı!", message: "Devam etmek için Tamam'a tıklayınız!", preferredStyle: .alert)
                                alert.addAction(UIAlertAction(title: "TAMAM", style: .cancel, handler: {(action) -> Void in
                                self.performSegue(withIdentifier: "AEV", sender: self)})) //handler fonk
                                self.present(alert, animated: true, completion: nil)
                                // Giriş başarılı buradan diğer sayfaya geçiş fonksiyonunu yaz
                            }
                    }else {
                        DispatchQueue.main.async
                            {
                                let alert = UIAlertController(title: "Giriş Başarısız!", message: "Kullanıcı Bulunamadı.", preferredStyle: .alert)
                                alert.addAction(UIAlertAction(title: "TAMAM", style: .cancel, handler: nil))
                                self.present(alert, animated: true, completion: nil)
                                //return; -> dene fonksiyondan çıkarıp bu ekranda bırakmak için kullanabiliriz
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
    
    
    
        
    }
   
    

  
