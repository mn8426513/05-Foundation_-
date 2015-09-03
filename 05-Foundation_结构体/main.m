//
//  main.m
//  05-Foundation_结构体
//
//  Created by Mac on 14-8-28.
//  Copyright (c) 2014年 MN&WC. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark 结构体的创建回顾
void test(){
  
    struct _Date{
    
        int year;
        int month;
        int day;
      };
    
    struct _Date d ={2015,12,7};
      d.day = 8;
}

void test1(){
    
    struct _Date{
        int year;
        int month;
        int day;
    };
    
    typedef struct _Date Mydate;
    
    Mydate d ={2015,12,7};
    d.year = 2014;
}
#pragma mark range
void range(){
   
    NSRange range = NSMakeRange(10, 8);
    NSLog(@"location is %zi\n",range.location);
    NSLog(@"length is %zi\n",range.length);
    
    NSString *str = NSStringFromRange(range);
    
    NSLog(@"%@\n",str);
}
#pragma mark point
void point(){
    NSPoint point = CGPointMake(0, 0);
    NSPoint point1 = NSMakePoint(1, 1);
    NSLog(@"X is %f,Y is %f",point.x , point.y);
    
    
    NSString *str = NSStringFromPoint(point1);
    NSLog(@"%@",str);
    

}
#pragma mark size
void size(){
    
    NSSize size = NSMakeSize(10, 8);
    NSLog(@"width is %f\n",size.width);
    NSLog(@"height is %f\n",size.height);
    
    NSString *str = NSStringFromSize(size);
    
    NSLog(@"%@\n",str);
}
#pragma mark rect
void rect(){
    NSRect rect =CGRectMake(10, 9, 8, 7);
    
    rect.origin.x = 2;
    rect.origin.y = 3;
    rect.size.height = 5;
    rect.size.width = 7;
    NSString *str = NSStringFromRect(rect);
    NSLog(@"%@",str);
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        rect();
        
        
    }
    return 0;
}
