import UIKit
struct Response: Codable{
    let results: MyResult
    let status: String
}
struct MyResult: Codable{
    let sunrise: String
    let sunset: String
    let solar_noon: String
    let day_length : Int
    let civil_twilight_begin: String
    let civil_twilight_end:String
    let nautical_twilight_begin:String
    let nautical_twilight_end:String
    let astronomical_twilight_begin:String
    let astronomical_twilight_end:String
}
private func getData(from url:String,completion:()->Void){
        URLSession.shared.dataTask(with: URL(string: url)! , completionHandler: {data,response,Error in
            guard let data = data , Error == nil else{
                print("something went wrong")
                return
            }
            
            var result:Response?
            do{
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                guard let res = json as? [String:Any] else{return}
               // print(json)
                guard let result = res["results"] as? [String:Any] else{return}
                guard let status = res["status"] as? String else{return}
                print("result: \(result)")
                print("status: \(status)")
                
            }
            catch{
                print("error found")
            }
            do{
                result = try JSONDecoder().decode(Response.self, from: data)
            }catch{
                print("failed")
            }
            guard let json = result else {
                print("json file failed")
                return
            }
            print("ok")
            print(json.status)
            print(json.results.day_length)
        }).resume()
    }
let url =  "https://api.sunrise-sunset.org/json?lat=36.7201600&lng=-4.4203400&formatted=0"
getData(from: url) {
    print("this is finished now printing url: \(url)")
}

var myFunction:((Int)->Bool)? = { n in
    if n>3{
        return true
    }
    return false

}
myFunction!(5)





