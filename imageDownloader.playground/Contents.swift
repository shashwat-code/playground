import UIKit

func download(){
    print("entered")
    let link = "https://images.unsplash.com/photo-1598812866501-87ad598839e7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8bWF0dGUlMjBibGFja3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80"
    guard let url = URL(string: link) else{
        print("url cannot be converted")
        return
    }
    
    URLSession.shared.dataTask(with: url, completionHandler: {Data,_,error in
        guard let data = Data , error == nil else{
            print("something went wrong")
            return
        }
       // print(response)
        //print(data)
        let image = UIImage(data: data)
        print(image as Any)
        
        
    }).resume()
    
}

download()
