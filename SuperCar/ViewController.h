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
    NSArray *teslaImageNames;
    NSArray *lambo;
    NSArray *lamboImageNames;
    NSArray *porsche;
    NSArray *porscheImageNames;
    
    NSArray *carModel;
    NSArray *carModelImage;
}

@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@end

