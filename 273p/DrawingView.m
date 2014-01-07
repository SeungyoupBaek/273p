//
//  DrawingView.m
//  273p
//
//  Created by Youp on 2014. 1. 8..
//  Copyright (c) 2014년 admin. All rights reserved.
//

#import "DrawingView.h"
@interface DrawingView(){
    UIBezierPath *myPath;
}

@end


@implementation DrawingView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        myPath = [[UIBezierPath alloc]init];
        myPath.lineWidth = 10;
        [[UIColor blackColor] setStroke];
        // Initialization code
    }
    return self;
}


-(void)drawRect:(CGRect)rect{
    [myPath stroke];
}

#pragma mark - Touch Methods
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *mytouch = [[touches allObjects] objectAtIndex:0];
    CGPoint point = [mytouch locationInView:self];
    [myPath moveToPoint:point];
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *mytouch = [[touches allObjects] objectAtIndex:0];
    CGPoint point = [mytouch locationInView:self];
    [myPath addLineToPoint:point];
    [self setNeedsDisplay];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
