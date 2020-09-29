//
//  PryanikyService.swift
//  PryanikyTest
//
//  Created by Ilyas Zhumadilov on 29.09.2020.
//

import Foundation

class PryanikyService {
    
    public func getData(url: String, completion: @escaping ((Result<Items, Error>) -> Void)) {
        
        guard let url = URL(string: url) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if let error = error {
                DispatchQueue.main.async {
                    completion(.failure(error))
                }
                return
            }
            
            guard let decodedData = self.dataDecoding(type: ItemsResponse.self, data: data) else { return }
            
            let items = decodedData.defaultMapping()
            
            DispatchQueue.main.async {
                completion(.success(items))
            }
            
        }.resume()
    }
    
    // MARK: - Module functions
    private func dataDecoding <T: Decodable> (type: T.Type, data: Data?) -> T? {
        
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        guard let data = data, let decodedData = try? decoder.decode(type, from: data) else { return nil }
        
        return decodedData
    }
}

