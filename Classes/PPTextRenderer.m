
//
//  PPTextRenderer.m
//  PPAsyncDrawingKit
//
//  Created by DSKcpp on 2016/10/14.
//  Copyright © 2016年 DSKcpp. All rights reserved.
//

#import "PPTextRenderer.h"

@implementation PPTextRenderer
- (instancetype)init
{
    if (self = [super init]) {
        self.heightSensitiveLayout = YES;
    }
    return self;
}

- (void)draw
{
    [self drawInContext:UIGraphicsGetCurrentContext()];
}

- (void)drawInContext:(CGContextRef)context
{
    [self drawInContext:context shouldInterruptBlock:nil];
}

- (void)drawInContext:(CGContextRef)context shouldInterruptBlock:(void (^)(void))shouldInterruptBlock
{
    [self drawInContext:context visibleRect:CGRectNull placeAttachments:NO shouldInterruptBlock:shouldInterruptBlock];
}

- (void)drawInContext:(CGContextRef)context visibleRect:(CGRect)visibleRect placeAttachments:(BOOL)placeAttachments shouldInterruptBlock:(void (^)(void))shouldInterruptBlock
{
    if (context) {
        NSAttributedString *attributedString = self.attributedString;
        if (!CGRectIsNull(visibleRect)) {
            
        } else {
            self.textLayout.layoutFrame;
        }
    } else {
        
    }
}

- (void)drawAttachmentsWithAttributedString:(NSAttributedString *)attributedString layoutFrame:(PPTextLayoutFrame *)layoutFrame context:(CGContextRef)context shouldInterrupt:(void (^)(void))shouldInterruptBlock
{
    
}

- (void)drawHighlightedBackgroundForActiveRange:(id)arg1 rect:(CGRect)rect context:(CGContextRef)context
{
    
}

- (UIOffset)drawingOffsetWithTextLayout:(PPTextLayout *)textLayout layoutFrame:(id)arg2
{
    return UIOffsetZero;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    if (self.eventDelegateContextView) {
        NSSet<UITouch *> * _touches = [event touchesForView:self.eventDelegateContextView];
        UITouch *touch = _touches.anyObject;
        CGPoint point;
        if (touch) {
            point = [touch locationInView:self.eventDelegateContextView];
        } else {
            point = CGPointZero;
        }
        point = [self convertPointToLayout:point];
        [self rangeInRanges:[self eventDelegateActiveRanges] forLayoutLocation:point];   
    }
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
}

- (CGRect)frame
{
    CGSize size;
    if (self.textLayout) {
        size = self.textLayout.size;
    } else {
        size = CGSizeZero;
    }
    return (CGRect){self.drawingOrigin, size};
}

- (void)setFrame:(CGRect)frame
{
    self.drawingOrigin = frame.origin;
    if (self.textLayout) {
        self.textLayout.size = frame.size;
    } else {
        
    }
}

@end
