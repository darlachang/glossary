//
//  main.m
//  glossary
//
//  Created by Ming-Han Chang on 2016/4/7.
//  Copyright © 2016年 Ming-Han Chang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //set. method 1
        NSDictionary *glossary =
        [NSDictionary dictionaryWithObjectsAndKeys: @"A class defined so other classes can inherit from it", @"abstract class", @"To implement all the methods defined in a protocol", @"adopt", @"Storing an object for later use", @"archiving", nil];
        
        //set. method 2
        NSDictionary *glossary2 = @{
            @"abstract class": @"A class defined so other classes can inherit from it", @"adopt": @"To implement all the methods defined in a protocol", @"archiving": @"storing an object for later use"
            };
        
        //print all key-value pairs from the dictionary
        for (NSString *key in glossary)
            NSLog(@"%@: %@", key, [glossary objectForKey: key]);
        for (NSString *key2 in glossary2)
            NSLog(@"%@: %@", key2, [glossary objectForKey: key2]);
        
        NSArray *keys = [glossary allKeys];
        keys = [keys sortedArrayUsingComparator:
                ^(id obj1, id obj2){
                    return [obj1 compare: obj2];
                }];
        NSLog(@"keys, %@", keys);
    }
    return 0;
}
