//
//  SelectReportViewController.swift
//  LazoReports
//
//  Created by Segundo Fariña on 09/09/2020.
//

import UIKit

public class SelectReportViewController: UIViewController {

    @IBOutlet weak var cellStackView: UIStackView!

    public override func loadView() {
        super.loadView()

        let bundle = Bundle(for: type(of: self))
        if let nib = bundle.loadNibNamed("SelectReportViewController", owner: self, options: nil), let nibView = nib.first as? UIView {
            self.view = nibView
        }
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
        setUpStackView()
    }

    private func loadImage(name: String) -> UIImage? {
        let mainBundle = Bundle(for: type(of: self))
        if let bundlePath = mainBundle.resourceURL?.appendingPathComponent("LazoReportsResources.bundle"), let resourcesBundle = Bundle(url: bundlePath) {
            let image = UIImage(named: name, in: resourcesBundle, compatibleWith: nil)
            return image
        }
        return nil
    }

    private func setUpStackView() {
        let grossMarginCell = SelectReportCellView(title: "Margen Bruto", image: ImageLoader().loadImage(name: .coins)!)

        cellStackView.addArrangedSubview(grossMarginCell)
    }

}
