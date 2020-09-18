//
//  ActivitesService.swift
//  LazoReports
//
//  Created by Segundo Fariña on 15/09/2020.
//

import Foundation

class ActivitiesService {

    let exerciseId = "5eeade6af8dc232ac9f209a9"
    let apiURL = "https://api-stage.lazo.co"
    let token = "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiYWRtaW4iLCJpYXQiOjE1OTk3NTc1MjMsImV4cCI6MTYwMjM0OTUyMywiYXVkIjoidXJuOmNhbXBvIiwiaXNzIjoiaHR0cHM6Ly93d3cubGF6by5jbyIsInN1YiI6IjVlZWE5NjExMDMwMTE4MTU4ZjkyY2JlZSJ9.FkMHsUe9jE3FFkgHaoK_yHfEP3Va7hSQWKzwSuZ0HrM"

    public func getActivities(completitionHandler: @escaping ([ActivityModel]?) -> Void ) {
        let url = URL(string: "\(apiURL)/v1/exercises/\(exerciseId)/activities")
        var request = URLRequest(url: url!)
        request.setValue(token, forHTTPHeaderField: "Authorization")
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")

        let task = URLSession.shared.dataTask(with: request) { (data, _, error ) in
            if let error = error {
                print(error)
                DispatchQueue.main.async {
                    completitionHandler(nil)
                }
                return
            }

            if let data = data {
                let activites = try? JSONDecoder().decode([ActivityModel].self, from: data)
                DispatchQueue.main.async {
                    completitionHandler(activites)
                }
            }
        }

        task.resume()
    }
}
