//
//  StationDetailCollectionViewCell.swift
//  TrainTime
//
//  Created by Byapps on 2022/01/18.
//

import SnapKit
import UIKit

final class StationDetailCollectionViewCell: UICollectionViewCell {
    private lazy var lineLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15.0, weight: .bold)
        
        return label
    }()
    
    private lazy var remainTimeLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15.0, weight: .medium)
        
        return label
    }()
    
    func setup(with realTimeArrival: StationArrivalDataResponseModel.RealTimeArrival) {
        layer.cornerRadius = 12.0
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.2
        layer.shadowRadius = 10
        
        backgroundColor = .systemBackground //background 색상 없으면 그림자 안생김
        
        [lineLabel, remainTimeLabel].forEach { addSubview($0) }
        
        lineLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(16.0)
            make.top.equalToSuperview().inset(16.0)
        }
        
        remainTimeLabel.snp.makeConstraints { make in
            make.leading.equalTo(lineLabel)
            make.top.equalTo(lineLabel.snp.bottom).offset(16.0)
            make.bottom.equalToSuperview().inset(16.0)
        }
        
        lineLabel.text = realTimeArrival.line
        remainTimeLabel.text = realTimeArrival.remainTime
    }
}
