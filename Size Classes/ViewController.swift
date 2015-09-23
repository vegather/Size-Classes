//
//  ViewController.swift
//  Size Classes
//
//  Created by Vegard Solheim Theriault on 23/09/15.
//  Copyright © 2015 MOON Wearables. All rights reserved.
//

import UIKit

extension UIUserInterfaceSizeClass: CustomStringConvertible {
	public var description: String {
		switch self {
		case .Unspecified:
			return "Unspecified"
		case .Compact:
			return "Compact"
		case .Regular:
			return "Regular"
		}
	}
}

class ViewController: UIViewController {

	@IBOutlet weak var horizontalSizeClassLabel: UILabel!
	@IBOutlet weak var verticalSizeClassLabel: UILabel!
	
	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
		
		horizontalSizeClassLabel.text = "\(view.traitCollection.horizontalSizeClass)"
		verticalSizeClassLabel.text = "\(view.traitCollection.verticalSizeClass)"
	}
}

