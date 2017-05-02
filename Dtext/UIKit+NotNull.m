//
//  UIKit+NotNull.m
//  NullTest
//
//  Created by Ys on 2017/4/20.
//  Copyright © 2017年 Ys. All rights reserved.
//

#import "UIKit+NotNull.h"


@implementation UILabel (NotNull)
-(void)setDtext:(NSString *)Dtext{
    
    if ([Dtext isEqual:[NSNull null]]) {self.text=@"";return;}
    if (Dtext.length==0) {self.text=@"";return;}
    if ([Dtext isEqualToString:@"<null>"]||[Dtext isEqualToString:@"(null)"]){self.text=@"";return;}
    
    self.text=Dtext;
    if([Dtext rangeOfString:@"<null>"].location !=NSNotFound || [Dtext rangeOfString:@"(null)"].location !=NSNotFound){
        self.text=[self.text stringByReplacingOccurrencesOfString:@"<null>" withString:@""];
        self.text=[self.text stringByReplacingOccurrencesOfString:@"(null)" withString:@""];
    }
}
@end

@implementation UITextField (NotNull)
-(void)setDtext:(NSString *)Dtext{
    
    if ([Dtext isEqual:[NSNull null]]) {self.text=@"";return;}
    if (Dtext.length==0) {self.text=@"";return;}
    if ([Dtext isEqualToString:@"<null>"]||[Dtext isEqualToString:@"(null)"]){self.text=@"";return;}
    
    self.text=Dtext;
    if([Dtext rangeOfString:@"<null>"].location !=NSNotFound || [Dtext rangeOfString:@"(null)"].location !=NSNotFound){
        self.text=[self.text stringByReplacingOccurrencesOfString:@"<null>" withString:@""];
        self.text=[self.text stringByReplacingOccurrencesOfString:@"(null)" withString:@""];
    }
}
@end

@implementation UITextView (NotNull)
-(void)setDtext:(NSString *)Dtext{
    
    if ([Dtext isEqual:[NSNull null]]) {self.text=@"";return;}
    if (Dtext.length==0) {self.text=@"";return;}
    if ([Dtext isEqualToString:@"<null>"]||[Dtext isEqualToString:@"(null)"]){self.text=@"";return;}
    
    self.text=Dtext;
    if([Dtext rangeOfString:@"<null>"].location !=NSNotFound || [Dtext rangeOfString:@"(null)"].location !=NSNotFound){
        self.text=[self.text stringByReplacingOccurrencesOfString:@"<null>" withString:@""];
        self.text=[self.text stringByReplacingOccurrencesOfString:@"(null)" withString:@""];
    }
}
@end





@implementation UIButton (NotNull)
-(void)setDtext:(NSString *)Dtext{
    
    if ([Dtext isEqual:[NSNull null]]) {
        [self setTitle:@"" forState:UIControlStateNormal];return;
    }
    
    if (Dtext.length==0) {
        [self setTitle:@"" forState:UIControlStateNormal];return;
    }
    
    if ([Dtext isEqualToString:@"<null>"]||
        [Dtext isEqualToString:@"(null)"]){
        [self setTitle:@"" forState:UIControlStateNormal];return;
    }
    
    NSString *ButtonTitle=Dtext;
    if([Dtext rangeOfString:@"<null>"].location !=NSNotFound){
        ButtonTitle=[ButtonTitle stringByReplacingOccurrencesOfString:@"<null>" withString:@""];
        
    }if([Dtext rangeOfString:@"(null)"].location !=NSNotFound){
        ButtonTitle=[ButtonTitle stringByReplacingOccurrencesOfString:@"(null)" withString:@""];
    }
    [self setTitle:ButtonTitle forState:UIControlStateNormal];
}
@end
