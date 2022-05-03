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
    carModel = [[NSArray alloc] init];
    carModelImage = [[NSArray alloc] init];
    
    tesla =  [[NSArray alloc] initWithObjects:@"모델X",@"모델S",nil];
    teslaImageNames = [[NSArray alloc] initWithObjects:@"tesla-model-x.jpg",@"tesla-model-s.jpg", nil];
    
    lambo = [[NSArray alloc] initWithObjects:@"아벤타도르",@"베네노", @"우라칸",nil];
    lamboImageNames = [[NSArray alloc] initWithObjects:@"lamborghini-aventador.jpg",@"lamborghini-veneno.jpg", @"lamborghini-huracan.jpg",nil];
    
    porsche = [[NSArray alloc] initWithObjects:@"911",@"박스터",nil];
    porscheImageNames =[[NSArray alloc] initWithObjects:@"porsche-911.jpg",@"porsche-boxter.jpg",nil];
    
    carModel = tesla;
    carModelImage = teslaImageNames;
    
    imageView.layer.cornerRadius = 50.0;
    imageView.layer.masksToBounds = true;
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if(component == 0){
        return companyName.count;
    }else{
        return carModel.count;
    }
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if(component == 0){
        return [companyName objectAtIndex:row];
    }else{
        return [carModel objectAtIndex:row];
    }
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    if(component == 0 && row == 0){
        carModel = tesla;
        carModelImage = teslaImageNames;
    }else if(component == 0 && row == 1){
        carModel = lambo;
        carModelImage = lamboImageNames;
    }else if(component == 0 && row == 2){
        carModel = porsche;
        carModelImage = porscheImageNames;
    }
    [pickerView reloadAllComponents];
    
    imageView.image = [UIImage imageNamed:[carModelImage objectAtIndex:[pickerView selectedRowInComponent:1]]];
}
@end
