//
//  ViewController.m
//  CustomFont
//
//  Created by ihefe_Hanrovey on 16/5/30.
//  Copyright © 2016年 IHEFE-Hanrovey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 20)];
    
    lable.text = @"This is a test for custom font, 9876543210";
    
    UIFont *font = [UIFont fontWithName:@"Lantinghei" size:25.0];
    
    lable.font = font;
    
    [self.view addSubview:lable];
    
    
    [self traverseFonts];
}

#pragma mark - 遍历系统字体库
- (void)traverseFonts
{
    for(NSString *fontfamilyname in [UIFont familyNames])
    {
        NSLog(@"family:'%@'",fontfamilyname);
        for(NSString *fontName in [UIFont fontNamesForFamilyName:fontfamilyname])
        {
           NSLog(@"\tfont:'%@'",fontName);
        }
        NSLog(@"-------------");
    }
}
@end
