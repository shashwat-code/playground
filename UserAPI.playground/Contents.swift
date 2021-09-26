import UIKit

private func userAPI(){
    guard let path = Bundle.main.path(forResource: "usersAPI", ofType: "txt") else{return}
    let url = URL(fileURLWithPath: path)
       
    do{
        let data = try Data(contentsOf: url)
        let json = try JSONSerialization.jsonObject(with: data, options: [])
        
        guard let array = json as? [Any] else { return }
        
        for user in array{
            guard let userDict = user as? [String:Any]  else {return}
            guard let userId  = userDict["id"] as? Int else{return}
            guard let email = userDict["email"] as? String else{return}
            guard let name = userDict["name"] as? String else{return}
            guard let phone_number = userDict["phone"] else {return}
            guard let company = userDict["company"] as? [String:Any] else {return}
            guard let bs = company["bs"] as? String else{return}
            guard let name_company = company["name"] as? String else{return}
            guard let phrase = company["catchPhrase"] as? String else{return}
            guard let website = userDict["website"] as? String else{return}
            guard let address = userDict["address"] as? [String:Any] else{return}
            guard let city = address["city"] as? String else{return}
            guard let apt_no = address["suite"] as? String else {return}
            guard let street = address["street"] as? String else {return}
            guard let zipcode =  address["zipcode"] as? String else {return}
            guard let geo = address["geo"] as? [String:String] else {return}
            guard let lat = geo["lat"] else{return}
            guard let long = geo["lng"] else{return}
            print("User Id:   \(userId)")
            print("Name:      \(name)")
            print("E-mail:    \(email)")
            print("phone:     \(phone_number)")
            print("Company Details: ")
            print("  Name   : \(name_company)")
            print("  Bs     : \(bs)")
            print("  Phrase : \(phrase)")
            print("  Website: \(website)")
            print("  Address: ")
            print("    House No. : \(apt_no)")
            print("    Street No.: \(street)")
            print("    City      : \(city)")
            print("    Zipcode   : \(zipcode)")
            print("    Map:  \n       lat: \(lat) \n       long: \(long)")
            print("\n------------------------------------------\n")
        }
        }
    catch{
        print("error found")
    }
}

userAPI()
   
    
