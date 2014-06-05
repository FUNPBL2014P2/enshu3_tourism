//
//  ViewController.h
//  SendMessagesToDB
//
//  Created by 河辺雅史 on 2014/05/28.
//  Copyright (c) 2014年 myname. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *messageTextField;

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
- (IBAction)myButton:(id)sender;


@end
