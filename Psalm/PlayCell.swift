//
//  PlayCell.swift
//  Psalm
//
//  Created by NohJaisung on 2018. 3. 7..
//  Copyright © 2018년 Ray Wenderlich. All rights reserved.
//

import UIKit

protocol PlayCellDelegate {
  
  func playTapped(_ cell: PlayCell)
  func stopTapped(_ cell: PlayCell)
}

class PlayCell: UITableViewCell {
  var delegate: PlayCellDelegate?
  
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var firstLineLabel: UILabel!
  @IBOutlet weak var progressView: UIProgressView!
  @IBOutlet weak var progressLabel: UILabel!
 
  @IBAction func playTapped(_ sender: AnyObject) {
    delegate?.playTapped(self)
  }
  
  @IBAction func stopTapped(_ sender: AnyObject) {
    delegate?.stopTapped(self)
  }
  
  
  func configure(track: Track) {
    titleLabel.text = track.name
    firstLineLabel.text = track.firstLine
     progressLabel.isHidden = true
    if track.isPlaying {
     progressLabel.isHidden = false
    progressLabel.text = "재생중..."
    }
    selectionStyle = track.downloaded ? UITableViewCellSelectionStyle.gray : UITableViewCellSelectionStyle.none
//    downloadButton.isHidden = downloaded || showDownloadControls
   
  }
  
  
  func updateDisplay(progress: Float, totalSize : String) {
    progressView.progress = progress
    progressLabel.text = String(format: "%.1f%% of %@", progress * 100, totalSize)
  }
  
  
  
  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
