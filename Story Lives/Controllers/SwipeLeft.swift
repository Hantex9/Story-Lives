//
//  SwipeLeft.swift
//  Story Lives
//
//  Created by Carmine Molisso on 19/12/17.
//  Copyright © 2017 Alessandro Izzo. All rights reserved.
//

import UIKit

class SwipeLeft: UIStoryboardSegue {
    
    override func perform() {
        
        let src = self.source
        let dst = self.destination
//        dst.prefersStatusBarHidden = false //Hide the status bar on the pop-up view
//        let dst2 = dst.view as! DestinationViewController
        let bar: Bool = dst.prefersStatusBarHidden
        print(bar)
        src.view.superview?.insertSubview(dst.view, aboveSubview: src.view)
        dst.view.transform = CGAffineTransform(translationX: src.view.frame.size.width, y: 0)
        
        UIView.animate(
            withDuration: 0.25,
            delay: 0.0,
            options: UIViewAnimationOptions.curveEaseInOut,
            animations: {
                dst.view.transform = CGAffineTransform(translationX: 0, y: 0)
        },
            completion: {
                finished in
                src.present(dst, animated: false, completion: nil)
        }
        )
    }
}
