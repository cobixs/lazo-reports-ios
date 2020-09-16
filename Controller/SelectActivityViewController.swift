//
//  SelectActivityViewController.swift
//  LazoReports
//
//  Created by Segundo Fariña on 09/09/2020.
//

import UIKit

public class SelectActivityViewController: UIViewController {

    @IBOutlet weak var cellStackView: UIStackView!

    public override func loadView() {
        super.loadView()

        let bundle = Bundle(for: type(of: self))
        if let nib = bundle.loadNibNamed("SelectActivityViewController", owner: self, options: nil), let nibView = nib.first as? UIView {
            self.view = nibView
        }
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
        setUpStackView()
        self.title = "Actividades"
        let activitesService = ActivitiesService()
        activitesService.getActivities() { (activities) in
            print(activities)
        }
    }

    private func setUpStackView() {
        let activityCell = SelectReportCellView(title: "Cebada 2020", image: ImageLoader().loadImage(name: .farmer)!)

        cellStackView.addArrangedSubview(activityCell)

        activityCell.addTarget(self, action: #selector(activityTaped), for: .touchUpInside)

    }

    @objc private func activityTaped(sender: SelectReportCellView) {
        print("HELLO!")
    }

}
