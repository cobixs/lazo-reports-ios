//
//  SelectReportCellView.swift
//  LazoReports
//
//  Created by Segundo Fariña on 09/09/2020.
//

import UIKit

class SelectReportCellView: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var continueImageView: UIImageView!

    convenience init(title: String, image: UIImage) {
        self.init(frame: .zero)
        titleLabel.text = title
        iconImageView.image = image
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUp()

    }

    private func setUp() {
        loadNib()
        self.addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.contentView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.contentView.topAnchor.constraint(equalTo: self.topAnchor),
            self.contentView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])

        contentView.layer.cornerRadius = 3
        contentView.layer.borderWidth = 1
        contentView.layer.borderColor = UIColor(red: 241/256, green: 241/256, blue: 241/256, alpha: 1).cgColor

        continueImageView.image = ImageLoader().loadImage(name: .continueArrow)
    }

    private func loadNib() {
        let bundle = Bundle(for: type(of: self))
        bundle.loadNibNamed("SelectReportCellView", owner: self, options: nil)
    }

}
