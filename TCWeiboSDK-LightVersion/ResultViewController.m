//
//  ResultViewController.m
//  TCWeiboSDK-LightVersion
//
//  Created by heloyue on 13-5-8.
//  Copyright (c) 2013年 heloyue. All rights reserved.
//

#import "ResultViewController.h"

@interface ResultViewController ()

@end

@implementation ResultViewController

@synthesize homeTextView,result;
//@synthesize url;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (id)init{
    self = [super init];
    if (self) {
        //result = [[NSDictionary alloc] init];
    }
    return  self;
}

#pragma mark - View lifecycle

/*
 // Implement loadView to create a view hierarchy programmatically, without using a nib.
 - (void)loadView
 {
 }
 */

- (void)backAction
{
    [self dismissModalViewControllerAnimated:YES];
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"结果展示";
    
    [self redrawSubView:self.interfaceOrientation];
    
    
    UIBarButtonItem *back = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(backAction)];
    self.navigationItem.leftBarButtonItem = back;
    [back release];
    
}



- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)dealloc
{
    [homeTextView release];
    homeTextView = nil;
    [result release];
    result = nil;
    [super dealloc];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

-(void) redrawSubView:(UIInterfaceOrientation)toInterfaceOrientation
{
    CGRect webviewRect;
    if(toInterfaceOrientation == UIInterfaceOrientationPortrait || toInterfaceOrientation == UIDeviceOrientationPortraitUpsideDown)
    {
        webviewRect  =   [[UIScreen mainScreen]bounds];
    }
    else
    {
        CGRect tmpRect = [[UIScreen mainScreen]bounds];
        webviewRect.size.height = tmpRect.size.width;
        webviewRect.size.width = tmpRect.size.height;
        webviewRect.origin = tmpRect.origin;
    }
    [homeTextView removeFromSuperview];
    
    homeTextView = [[UITextView alloc] initWithFrame:webviewRect];
    homeTextView.scrollEnabled = YES;
    homeTextView.editable = NO;
    homeTextView.text = [NSString stringWithFormat:@"################ 结果 ################\r %@", result];
    [self.view addSubview:homeTextView];
    
    NSLog(@"height:%f, width:%f",webviewRect.size.height, webviewRect.size.width);
    
}

-(void) willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    
    [self redrawSubView:toInterfaceOrientation];
}



@end
