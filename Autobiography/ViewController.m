//
//  ViewController.m
//  Autobiography
//
//  Created by Abbin on 15/10/15.
//  Copyright © 2015 Abbin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIVisualEffectView *navigationView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self drawNavigationBarBottomBorder];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(receiveTestNotification:)
                                                 name:@"TestNotification"
                                               object:nil];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)menuClicked:(UIButton *)sender {
    self.view.layer.cornerRadius = 5;
    self.view.layer.masksToBounds = YES;
    [self presentLeftMenuViewController:self];
}


- (void) receiveTestNotification:(NSNotification *) notification
{
    self.view.layer.cornerRadius = 0;
    self.view.layer.masksToBounds = YES;
}

-(void)drawNavigationBarBottomBorder{
    CALayer *bottomBorder = [CALayer layer];
    
    bottomBorder.frame = CGRectMake(0.0f, 64.0f, self.navigationView.frame.size.width, 1.0f);
    
    bottomBorder.backgroundColor = [UIColor colorWithWhite:0.8f
                                                     alpha:1.0f].CGColor;
    
    [self.navigationView.layer addSublayer:bottomBorder];
}


@end
