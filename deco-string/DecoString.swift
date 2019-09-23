//
//  DecoString.swift
//  deco-string
//
//  Created by 김민구 on 24/09/2019.
//  Copyright © 2019 pkmk. All rights reserved.
//

import UIKit

// MARK: - Main
public extension NSMutableAttributedString {
    private var maxRange: NSRange {
        return NSMakeRange(0, length)
    }
    
    // 줄간격
    @discardableResult
    func setLineSpacing(with spacing: CGFloat) -> Self {
        let paragraph = NSMutableParagraphStyle()
        paragraph.lineSpacing = spacing
        addAttribute(.paragraphStyle, value: paragraph, range: maxRange)
        return self
    }
    
    // 자간
    @discardableResult
    func setLetterSpace(with spacing: CGFloat) -> Self {
        addAttribute(.kern, value: spacing, range: maxRange)
        return self
    }
    
    // 폰트
    @discardableResult
    func setFont(with font: UIFont) -> Self {
        addAttribute(.font, value: font, range: maxRange)
        return self
    }
    
    // url
    @discardableResult
    func setLink(with urlString: String) -> Self {
        addAttribute(.link, value: urlString, range: maxRange)
        return self
    }
    
    // 폰트색
    @discardableResult
    func setColor(with foreground: UIColor, back background: UIColor? = .clear) -> Self {
        addAttribute(.foregroundColor, value: foreground, range: maxRange)
        if let back = background {
            addAttribute(.backgroundColor, value: back, range: maxRange)
        }
        return self
    }
}

