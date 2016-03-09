//
//  ViewController.m
//  Imaginarium
//
//  Created by iOS Entwickler on 09.03.16.
//  Copyright (c) 2016 noorg. All rights reserved.
//

#import "ViewController.h"
#import "ImageViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([segue.destinationViewController isKindOfClass:[ImageViewController class]]){
        
        ImageViewController *ivc = (ImageViewController *)segue.destinationViewController;
        ivc.imageURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://images.apple.com/v/iphone-5s/gallery/a/images/download/%@.jpg", segue.identifier]];
        [ivc setTitle:segue.identifier];
    }
}

@end
