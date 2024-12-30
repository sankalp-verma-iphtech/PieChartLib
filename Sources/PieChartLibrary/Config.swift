//
//  Config.swift
//  PieChartLibrary
//
//  Created by iPHTech38 on 30/12/24.
//

import SwiftUICore
#if canImport(AppKit) && !targetEnvironment(macCatalyst)
import AppKit
#endif
#if canImport(UIKit)
import UIKit
#endif

extension Color {
    static var dashboardBackGroundColor: Color { Color(#colorLiteral(red: 0.9641175866, green: 0.9664089084, blue: 0.9897853732, alpha: 1)) }
    static var backGroundColor: Color { Color(#colorLiteral(red: 0.1725490196, green: 0.2431372549, blue: 0.3137254902, alpha: 1)) }
    static var secondaryColor: Color { Color(#colorLiteral(red: 0.2039215686, green: 0.2862745098, blue: 0.368627451, alpha: 1)) }
    static var skyBlue: Color { Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)) }
    static var darkBlue: Color { Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)) }
    static var lightOrange: Color { Color(#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)) }
    static var darkOrange: Color { Color(#colorLiteral(red: 1, green: 0.6770778699, blue: 0.2824759713, alpha: 1)) }
    static var textColor: Color { Color(#colorLiteral(red: 0.1568627451, green: 0.1568627451, blue: 0.1568627451, alpha: 1)) }
    static var placeholderColor: Color { Color(#colorLiteral(red: 0.1568627451, green: 0.1568627451, blue: 0.1568627451, alpha: 1)) }
    static var primaryButtonColor: Color { .red }
    static var listBgcolor: Color { Color(red: 213*0.7/255, green: 216*0.7/255, blue: 226*0.7/255) }
    static var whiteBackGroundColor: Color { Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)) }
    static var secondaryColorN: Color { Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)) }

    // Conditional UIColor for UIKit
    #if canImport(UIKit)
    static var backGroundColorN: Color { Color(UIColor(red: 0.96, green: 0.96, blue: 0.99, alpha: 1.00)) }
    static var logoColor: Color { Color(UIColor(red: 1.00, green: 0.35, blue: 0.00, alpha: 1.00)) }
    static var lightColor: Color { Color(UIColor(red: 52/255, green: 235/255, blue: 177/255, alpha: 1.00)) }
    static var yellowColor: Color { Color(UIColor(red: 0.98, green: 0.85, blue: 0.29, alpha: 1.00)) }
    static var textColorN: Color { Color(UIColor(red: 0.28, green: 0.29, blue: 0.35, alpha: 1.00)) }
    static var searchBar: Color { Color(UIColor(red: 0.94, green: 0.94, blue: 0.94, alpha: 1.00)) }
    static var chatBubbleColor: Color { Color(UIColor(red: 230/255, green: 230/255, blue: 250/255, alpha: 1.00)) }
    static var primaryColor: Color { Color(UIColor(red: 1.0, green: 0.4, blue: 0.02, alpha: 1.0)) }
    #else
    // Fallbacks for non-UIKit platforms (SwiftUI)
    static var backGroundColorN: Color { Color(red: 0.96, green: 0.96, blue: 0.99) }
    static var logoColor: Color { Color(red: 1.00, green: 0.35, blue: 0.00) }
    static var lightColor: Color { Color(red: 52/255, green: 235/255, blue: 177/255) }
    static var yellowColor: Color { Color(red: 0.98, green: 0.85, blue: 0.29) }
    static var textColorN: Color { Color(red: 0.28, green: 0.29, blue: 0.35) }
    static var searchBar: Color { Color(red: 0.94, green: 0.94, blue: 0.94) }
    static var chatBubbleColor: Color { Color(red: 230/255, green: 230/255, blue: 250/255) }
    static var primaryColor: Color { Color(red: 1.0, green: 0.4, blue: 0.02) }
    #endif
}

