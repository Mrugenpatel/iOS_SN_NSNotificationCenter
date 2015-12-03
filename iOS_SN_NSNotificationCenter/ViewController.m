//
//  ViewController.m
//  iOS_SN_NSNotificationCenter
//
//  Created by mac on 15/12/3.
//  Copyright © 2015年 kiwi. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lableOne;

@end

@implementation ViewController

- (void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"notificarions" object:nil];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(notificarions:) name:@"notificarions" object:nil];

}

-(void)notificarions:(NSNotification *)not
{
    self.lableOne.text = not.userInfo[@"key"];
}


- (IBAction)actionOne:(id)sender {
    SecondViewController *seconVDC = [[SecondViewController alloc]init];
    [self presentViewController:seconVDC  animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
