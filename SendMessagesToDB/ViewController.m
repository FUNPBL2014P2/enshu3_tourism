//
//  ViewController.m
//  SendMessagesToDB
//
//  Created by 河辺雅史 on 2014/05/28.
//  Copyright (c) 2014年 myname. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)nameTextfield:(id)sender {
}
- (IBAction)messageTextfield:(id)sender {
}

- (IBAction)myButton:(id)sender {
    NSString *urlAsString = @"http://210.226.0.82/webdb/add.php";
    NSString *namebefore = self.nameTextfield.text;
    NSString *messagebefore = self.messageTextfield.text;
    NSString *nameafter = [namebefore stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *messageafter = [messagebefore stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    urlAsString = [urlAsString stringByAppendingString:@"?title="];
    urlAsString = [urlAsString stringByAppendingString:nameafter];
    urlAsString = [urlAsString stringByAppendingString:@"&message="];
    urlAsString = [urlAsString stringByAppendingString:messageafter];
    
    NSURL *url = [NSURL URLWithString:urlAsString];
    
    NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:url];
    [urlRequest setTimeoutInterval:30.0f];
    [urlRequest setHTTPMethod:@"GET"];
    [NSURLConnection sendSynchronousRequest:urlRequest returningResponse:nil error:nil];

}
@end
