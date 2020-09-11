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
        let personalExpenses = SelectReportCellView(title: "Gastos de personal", image: ImageLoader().loadImage(name: .farmer)!)
        let strucutreExpenses = SelectReportCellView(title: "Gastos de estructura", image: ImageLoader().loadImage(name: .company)!)
        let productionActivities = SelectReportCellView(title: "Produccion por actividad", image: ImageLoader().loadImage(name: .wheat)!)
        let machinery = SelectReportCellView(title: "Maquinaria propia", image: ImageLoader().loadImage(name: .wheat2)!)

        cellStackView.addArrangedSubview(grossMarginCell)
        cellStackView.addArrangedSubview(personalExpenses)
        cellStackView.addArrangedSubview(strucutreExpenses)
        cellStackView.addArrangedSubview(productionActivities)
        cellStackView.addArrangedSubview(machinery)

        grossMarginCell.addTarget(self, action: #selector(grossMarginTaped), for: .touchUpInside)
        personalExpenses.addTarget(self, action: #selector(personalExpensesTaped), for: .touchUpInside)
        strucutreExpenses.addTarget(self, action: #selector(strucutreExpensesTaped), for: .touchUpInside)
        productionActivities.addTarget(self, action: #selector(productionActivitiesTaped), for: .touchUpInside)
        machinery.addTarget(self, action: #selector(machineryTaped), for: .touchUpInside)
    }

    @objc private func grossMarginTaped(sender: SelectReportCellView) {
        print("HELLO!")
    }

    @objc private func personalExpensesTaped(sender: SelectReportCellView) {
        print("HELLO!")
    }

    @objc private func strucutreExpensesTaped(sender: SelectReportCellView) {
        print("HELLO!")
    }

    @objc private func productionActivitiesTaped(sender: SelectReportCellView) {
        print("HELLO!")
    }

    @objc private func machineryTaped(sender: SelectReportCellView) {
        print("HELLO!")
    }

}
