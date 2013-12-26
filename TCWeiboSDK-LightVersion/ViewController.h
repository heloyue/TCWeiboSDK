//
//  ViewController.h
//  TCWeiboSDK-LightVersion
//
//  Created by heloyue on 13-4-25.
//  Copyright (c) 2013年 heloyue. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WeiboApi.h"


@interface ViewController : UIViewController <WeiboRequestDelegate,WeiboAuthDelegate>
{
    UIButton                    *btnLogin;
    UIButton                    *btnExtend;
    UIButton                    *btnHometimeline;
    UIButton                    *btnAddPic;
    UIButton                    *btnLogout;
    
    WeiboApi                    *wbapi;
    
}

@property (nonatomic , retain) WeiboApi                    *wbapi;

@end
