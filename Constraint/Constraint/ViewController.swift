//
//  ViewController.swift
//  Constraint
//
//  Created by Otavio Brito on 23/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var arrayInfo = [Information]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

        arrayInfo.append(Information(image: "Homem-Aranha", title: "Homem Aranha", rate: "⭐️⭐️⭐️⭐️⭐️", description: "Um menino que vai passar as férias distantes e Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries. "))

        arrayInfo.append(Information(image: "Troll", title: "Troll", rate: "⭐️⭐️⭐️", description: "Um menino que caça trolls Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been  printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries. "))

        arrayInfo.append(Information(image: "Up", title: "Up", rate: "⭐️⭐️⭐️⭐️⭐️", description: "Um menino que muda a vida de um velhinho casmurro when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries. "))

        arrayInfo.append(Information(image: "ScoobyDoo", title: "ScoobyDoo", rate: "⭐️⭐️⭐️", description: "Adolescentes resolvendo mistérios "))


    }


}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayInfo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "InfoViewCell", for: indexPath) as! InfoViewCell

        cell.setup(info: arrayInfo[indexPath.row])

        return cell
    }
    
    
}
