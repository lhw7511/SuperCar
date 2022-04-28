//
//  ViewController.m
//  SuperCar
//
//  Created by beintech on 2022/04/28.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize imageView;

- (void)viewDidLoad {
    [super viewDidLoad];
    companyName = [[NSArray alloc]initWithObjects:@"테슬라",@"람보르기니",@"포르쉐", nil ];
    tesla =  [[NSArray alloc] initWithObjects:@"모델X",@"모델S",nil];
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if(component == 0){
        return companyName.count;
    }else{
        return tesla.count;
    }
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if(component == 0){
        return [companyName objectAtIndex:row];
    }else{
        return [tesla objectAtIndex:row];
    }
}
@end
