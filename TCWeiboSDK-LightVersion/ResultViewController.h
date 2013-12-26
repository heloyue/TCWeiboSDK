//
//  ResultViewController.h
//  TCWeiboSDK-LightVersion
//
//  Created by heloyue on 13-5-8.
//  Copyright (c) 2013年 heloyue. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ResultViewController : UIViewController
{
    UITextView          *homeTextView;
    NSString            *result;
    //NSString            *url;
}

@property   (nonatomic, retain)   UITextView         *homeTextView;
@property   (nonatomic, retain)   NSString           *result;
//@property   (nonatomic, copy)      NSString          *url;


@end
