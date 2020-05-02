//
//  ViewController.swift
//  TwitterVC
//
//  Created by Habib Durodola on 2020-04-12.
//  Copyright © 2020 DOH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    //indentifer
    let cellIdentifier = "cellIdentifier"
    let customCellIdentifier = "customCellIdentifier"
    let headerIdentifier = "headerIdentifier"
    let footerIdentifier = "footerIdentifier"

    //uib
    let footerUIB = "TwitterFooterHeader"
    let cellUIB = "TwitterCell"
    let headerUIB = "TwitterHeaderFooter"

    var userViewModel: UserViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationbar()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
        setupTableView()
    }
    func setupNavigationbar()  {
        let titleViewImage = UIImageView(image: UIImage(named: "title_icon"))

        titleViewImage.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        titleViewImage.contentMode = .scaleAspectFit
        
        navigationItem.titleView = titleViewImage
        setupLeftNavItem()
        setupRightNavItems()
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.isTranslucent = false
    }

    private func setupLeftNavItem() {
        let followButton = UIButton(type: .system)
        followButton.setImage(#imageLiteral(resourceName: "follow").withRenderingMode(.alwaysOriginal), for: .normal)
        followButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: followButton)
    }

    private func setupRightNavItems() {
        let searchButton = UIButton(type: .system)
        searchButton.setImage(#imageLiteral(resourceName: "search").withRenderingMode(.alwaysOriginal), for: .normal)
        searchButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)

        let composeButton = UIButton(type: .system)
        composeButton.setImage(#imageLiteral(resourceName: "compose").withRenderingMode(.alwaysOriginal), for: .normal)
        composeButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)

        navigationItem.rightBarButtonItems = [UIBarButtonItem(customView: composeButton), UIBarButtonItem(customView: searchButton)]
    }

    func setupTableView(){ //TwitterFooterHeader
        tableView.register(UINib(nibName: headerUIB, bundle: nil), forHeaderFooterViewReuseIdentifier: headerIdentifier) // header r
        tableView.register(UINib(nibName: cellUIB, bundle: nil), forCellReuseIdentifier: customCellIdentifier) // cell
        tableView.register(UINib(nibName: footerUIB, bundle: nil), forHeaderFooterViewReuseIdentifier: footerIdentifier) // footer

    }


}

extension ViewController : UITableViewDataSource , UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // var cell : UITableViewCell!
        let cell = tableView.dequeueReusableCell(withIdentifier: customCellIdentifier, for: indexPath) as! TwitterCell
        userViewModel = UserViewModel()

        guard let user = userViewModel else {
            return cell
        }
        cell.selectionStyle = .none

        cell.nameLabel.text = user.getUser()[indexPath.row].name
        cell.handleLabel.text = user.getUser()[indexPath.row].handle
        cell.descriptionLabel.text = user.getUser()[indexPath.row].description
        print(user.getUser()[indexPath.row].description)

        return cell
    }

    // header
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        // Dequeue with the reuse identifier
        let header = self.tableView.dequeueReusableHeaderFooterView(withIdentifier: headerIdentifier) as! TwitterHeaderFooter
        header.headerLabel.text = "WHO TO FOLLOW"
        return header
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 70
    }

    // footer
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footer = self.tableView.dequeueReusableHeaderFooterView(withIdentifier: footerIdentifier) as! TwitterFooterHeader
        // let header = cell as! TableSectionHeader
        footer.footerLabel.text = "Show me more"
        return footer
    }

    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 70 
    }


    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        return UITableView.automaticDimension

    }

     func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {

        return UITableView.automaticDimension

    }

}

