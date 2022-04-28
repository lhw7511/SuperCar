//
//  ViewController.h
//  SuperCar
//
//  Created by beintech on 2022/04/28.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate>{
    NSArray *companyName;
    NSArray *tesla;
}

@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@end

