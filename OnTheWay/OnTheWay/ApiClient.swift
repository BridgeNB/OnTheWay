//
//  ApiClient.swift
//  OnTheWay
//
//  Created by ZHENGYANGQIAO on 9/16/17.
//  Copyright © 2017 Udacity. All rights reserved.
//

import Foundation

/*
 * Main Api client implementation
 */
//class ApiClient {
//    // Seesion
//    let session = URLSession.shared
//    
//    // Headers for each request
//    var headers: [String: String] = [String: String]()
//    
//    // Available HTTP methods for requests
//    enum Method: String {
//        case Get
//        case Post
//        case Put
//        case Delete
//    }
//    
//    /*
//    * Create encoded query string from params dictionary
//    */
//    class func encodeParameters(_ params: [String: AnyObject]) -> String {
//        var components = URLComponents()
//        components.queryItems = params.map{URLQueryItem(name: $0, value: String(describing: $1))}
//        return components.percentEncodedQuery ?? ""
//    }
//    
//    /*
//    * Prepare NSMutableURLRequest object to call API
//    */
//    func prepareRequest(_ url: String, method: Method = .Get, params: [String:AnyObject] = [String: AnyObject](), body: AnyObject? = nil) -> NSMutableURLRequest {
//        let url = url + "?" + ApiClient.encodeParameters(params)
//        let request = NSMutableURLRequest(url: URL(string: url)!)
//        for (header, value) in headers {
//            request.addValue(value, forHTTPHeaderField: header)
//        }
//        if body != nil {
//            do {
//                request.httpBody = try! JSONSerialization.data(withJSONObject: body!, options: [])
//            }
//        }
//        return request
//    }
//    
//    /*
//    * Send request using sessing task and try parse result as JSON object
//    */
//    func processRequest(_ request: NSMutableURLRequest) {
//        let task = session.dataTask(with:request) { (data, response, error) in
//            guard error == nil else {
//                print("Error in response")
//                handler(request: nil, error: "Connection error")
//                return
//            }
//            guard status >= 200 && status <= 299 else {
//                print("Wrong response status code \(status)")
//                handler(result: nil, error: "User or password is incorrect")
//                return
//            }
//            guard let data = self.processResponseData(data) else {
//                print("Wrong response data")
//                handler(result: nil, error: "Connection error")
//                return
//            }
//            let json: AnyObject!
//            do {
//                json = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
//            } catch {
//                print("JSON converting error")
//                handler(result: nil, error: "Connection error")
//                return
//            }
//            handler(result: json, error: nil)
//        }
//        task.resume()
//    }
//    
//    /*
//    * Process response data for next parsing
//    */
//    func processResponseData(_ data: Data?) -> Data? {
//        return data!
//    }
//}
//class ApiClient {
//    
//    // Session
//    var session: URLSession { return URLSession.shared }
//    
//    // Common headers for each request
//    var headers: [String: String] = [String: String]()
//    
//    // Available HTTP methods for requests
//    enum Method: String {
//        case Get
//        case Post
//        case Put
//        case Delete
//    }
//    
//    /*
//     * Create encoded query string from params dictionary
//     */
//    class func encodeParameters(_ params: [String: AnyObject]) -> String {
//        var components = URLComponents()
//        components.queryItems = params.map { URLQueryItem(name: $0, value: String(describing: $1)) }
//        
//        return components.percentEncodedQuery ?? ""
//    }
//    
//    /*
//     * Prepare NSMutableURLRequest object to call API
//     */
//    func prepareRequest(_ url: String, method: Method = .Get, params: [String: AnyObject] = [String: AnyObject](), body: AnyObject? = nil) -> NSMutableURLRequest {
//        let url = url + "?" + ApiClient.encodeParameters(params)
//        let request = NSMutableURLRequest(url: URL(string: url)!)
//        request.httpMethod = method.rawValue.uppercased()
//        
//        for (header, value) in headers {
//            request.addValue(value, forHTTPHeaderField: header)
//        }
//        
//        if body != nil {
//            do {
//                request.httpBody = try! JSONSerialization.data(withJSONObject: body!, options: [])
//            }
//        }
//        
//        return request
//    }
//    
//    /*
//     * Send request using session task and try parse result as JSON object
//     */
//    func processResuest(_ request: NSMutableURLRequest, handler: @escaping (_ result: AnyObject?, _ error: String?) -> Void) {
//        let task = session.dataTask(with: request, completionHandler: { (data, response, error) in
//            // Was there an error?
//            guard error == nil else {
//                print("Error in response")
//                handler(result: nil, error: "Connection error")
//                return
//            }
//            
//            // Did we get a successful 2XX response?
//            guard let status = (response as? HTTPURLResponse)?.statusCode, status != 403 else {
//                print("Wrong response status code (403)")
//                handler(result: nil, error: "Username or password is incorrect")
//                return
//            }
//            
//            // Did we get a successful 2XX response?
//            guard status >= 200 && status <= 299 else {
//                print("Wrong response status code \(status)")
//                handler(result: nil, error: "Connection error")
//                return
//            }
//            
//            // Was there any data returned?
//            guard let data = self.processResponseData(data) else {
//                print("Wrong response data")
//                handler(result: nil, error: "Connection error")
//                return
//            }
//            
//            let json: AnyObject!
//            do {
//                json = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
//            } catch {
//                print("JSON converting error")
//                handler(result: nil, error: "Connection error")
//                return
//            }
//            
//            handler(result: json, error: nil)
//        })
//        
//        task.resume()
//    }
//    
//    /*
//     * Process response data for next parsing
//     */
//    func processResponseData(_ data: Data?) -> Data? {
//        return data!
//    }
//}
