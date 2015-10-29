//
//  ViewController.m
//  Rita
//
//  Created by fpmi on 29.10.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    NSMutableDictionary * dictionary;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    dictionary = [[NSMutableDictionary alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)printAllClick:(id)sender {
    for(NSString* key in dictionary){
        NSString * value = (NSString *)[dictionary objectForKey:key];
        //NSString strValue = (NSString *)id;
        NSLog(value);
    }
}

- (IBAction)addClick:(id)sender {
    NSString * str = self.inputWord.text;
    [dictionary setObject:str forKey:str];
}

@end
