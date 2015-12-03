//
//  SecondViewController.m
//  iOS_SN_NSNotificationCenter
//
//  Created by mac on 15/12/3.
//  Copyright © 2015年 kiwi. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textfield;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)actionTow:(id)sender {
    NSString *test = self.textfield.text;
    NSDictionary *dic = @{
                          @"key":test
                          };
    [[NSNotificationCenter defaultCenter]postNotificationName:@"notificarions" object:self userInfo:dic];
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
