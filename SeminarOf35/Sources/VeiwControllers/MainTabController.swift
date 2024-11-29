//
//  MainTabController.swift
//  SeminarOf35
//
//  Created by 송여경 on 11/13/24.
//

import UIKit

class MainTabController: UITabBarController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    justifyViewControllers()
    tabBarAppearnaece()
    view.backgroundColor = .systemBackground
  }
  
  func justifyViewControllers() {
    let today = TodayPageController()
    let game = GamePageController()
    let app = AppPageController()
    let arcade = ArcadePageController()
    let search = SearchPageController()
    
    let nav1 = templateNavifagionController(
      title: "투데이",
      image: UIImage(systemName: "doc.text"),
      selectedImage: UIImage(systemName: "doc.text.fill"),
      rootViewController: today
    )
    
    let nav2 = templateNavifagionController(
      title: "게임",
      image: UIImage(systemName: "gamecontroller"),
      selectedImage: UIImage(systemName: "gamecontroller.fill"),
      rootViewController: game
    )
    
    let nav3 = templateNavifagionController(
      title: "앱",
      image: UIImage(systemName: "square.stack.3d.up"),
      selectedImage: UIImage(systemName: "square.stack.3d.up.fill"),
      rootViewController: app
    )
    
    let nav4 = templateNavifagionController(title: "아케이드", image: UIImage(systemName: "arcade.stick"), selectedImage: UIImage(systemName: "arcade.stick.fill"), rootViewController: arcade)
    
    let nav5 = templateNavifagionController(
      title: "검색",
      image: UIImage(systemName: "magnifyingglass"),
      selectedImage: UIImage(systemName: "magnifyingglass"),
      rootViewController: search
    )
    setViewControllers([nav1, nav2, nav3, nav4, nav5], animated: true)
  }
  
  func templateNavifagionController(
    title: String,
    image: UIImage?,
    selectedImage: UIImage?,
    rootViewController: UIViewController
  ) -> UINavigationController {
    let nav = UINavigationController(rootViewController: rootViewController)
    nav.tabBarItem.title = title
    nav.tabBarItem.image = image
    nav.tabBarItem.selectedImage = selectedImage
    
    return nav
  }
  
  func tabBarAppearnaece() {
    let appearance = UITabBarAppearance()
    appearance.configureWithOpaqueBackground()
    
    appearance.backgroundColor = UIColor.systemBackground.withAlphaComponent(0.3)
    
    appearance.shadowImage = UIImage()
    appearance.shadowColor = .clear
    
    tabBar.standardAppearance = appearance
    tabBar.scrollEdgeAppearance = appearance
  }
    
}
