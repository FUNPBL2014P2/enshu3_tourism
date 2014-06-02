//
//  ViewController.h
//  SendMessagesToDB
//
//  Created by 河辺雅史 on 2014/05/28.
//  Copyright (c) 2014年 myname. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)messageTextfield:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *messageTextfield;
- (IBAction)nameTextfield:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *nameTextfield;

@end
