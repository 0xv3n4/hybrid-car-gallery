//
//  KaydolVC.swift
//  ValorantGaleriProjesi
//
//  Created by Boran Akova on 14.05.2020.
//  Copyright © 2020 Boran Akova. All rights reserved.
//

import UIKit

class KaydolVC: UIViewController {

    
    @IBOutlet weak var kayitusername: UITextField!
    
    @IBOutlet weak var kayitpassword: UITextField!
    
    @IBOutlet weak var kayitpasswordconfirm: UITextField!
    
    @IBAction func KaydolButonu(_ sender: UIButton) {
        
        var username : NSString = kayitusername.text as! NSString
         var password : NSString = kayitpassword.text as! NSString
         var confirm_password : NSString = kayitpasswordconfirm.text as! NSString
        
        // Kullanıcı adı ya da Şifre "" (Boş mu )
        if ( username.isEqual(to: "") || password.isEqual(to: "") || confirm_password.isEqual(to: "")) {
            
                  let alert = UIAlertController(title: "Kayıt Başarısız", message:" Lütfen Kullanıcı Adı ve Şifre giriniz" , preferredStyle: .alert)
                   alert.addAction(UIAlertAction(title : "Tamam" , style: .default,handler : nil))
                   self.present(alert,animated: false)
            
        } else if ( !password.isEqual(to :confirm_password as String) ) {
        
                  let alert = UIAlertController(title: "Şifreler Birbirine Uymuyor", message:" Girdiğiniz şifreler aynı olmak zorundadır." , preferredStyle: .alert)
                   alert.addAction(UIAlertAction(title : "Tamam" , style: .default,handler : nil))
                   self.present(alert,animated: true)
               }
        //KULLANICI ADI ŞİFRE ŞİFRE KONTROLÜNÜN GİRİLDİKTEN SONRA BAĞLANTININ SAĞLANMASI BAŞLANGIÇ YERİ :
            
        else {
        
            var post:NSString = "username=\(username)&password=\(password)&c_password=\(confirm_password)" as NSString
            
                       NSLog("PostData: %@",post);
            
            var postData:NSData = post.data(using: String.Encoding.ascii.rawValue)! as NSData
            
            var postLength:NSString = String( postData.length ) as NSString
            
        // This url could be a your remote Restful API url.
        // Change yourApiProvider text for yourself.
        let url = URL(string: "http://www.yourprovider.com/api/userlogin.php")!
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
                if let data = data, let dataString = String(data: data, encoding: .utf8) {
                    print("data: \(dataString)")
                    if dataString == "1"{
                        DispatchQueue.main.async
                            {
                                let alert = UIAlertController(title: "Kayıt Tamamlandı!", message: "Kullanıcı kaydınız başarı ile oluşturulmuştur.", preferredStyle: .alert)
                                alert.addAction(UIAlertAction(title: "TAMAM", style: .cancel, handler: nil))
                                self.present(alert, animated: true, completion: nil)
                                sender.isEnabled = false
                            }
                    }else if dataString == "0"{
                        DispatchQueue.main.async
                            {
                                let alert = UIAlertController(title: "Bağlantı Hatası!", message: "Internet erişiminizi kontrol ediniz.", preferredStyle: .alert)
                                alert.addAction(UIAlertAction(title: "TAMAM", style: .cancel, handler: nil))
                                self.present(alert, animated: true, completion: nil)
                            }
                        
                    }else if dataString == "-1"{
                        DispatchQueue.main.async
                            {
                                let alert = UIAlertController(title: "Kullanıcı Adı Alınmış!", message: "Kullanıcı adı alınmıştır yeni bir kullanıcı adı deneyiniz.", preferredStyle: .alert)
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
      
        
        
     }
    
    // Giriş ekranına yönlendirilen buton
    @IBAction func GiriseGit(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
    
