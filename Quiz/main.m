//
//  main.m
//  Quiz
//
//  Created by Azar, Rita on 3/31/15.
//  Copyright (c) 2015 Azar, Rita. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "BNRItem.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        // Create a mutable array object, store its address in items variable
        NSMutableArray *itemsNumbers = [[NSMutableArray alloc] init];
        
        // Send the message addObject: to the NSMutableArray pointed to
        // by the variable items, passing a string each time
        [itemsNumbers addObject:@"One"];
        [itemsNumbers addObject:@"Two"];
        [itemsNumbers addObject:@"Three"];
        
        // Send another message, insertObject:atIndex:, to that same array object
        [itemsNumbers insertObject:@"Zero" atIndex:0];
        
        // For every item in the items
        for (NSString *item in itemsNumbers) {
            // Log the description of item
            NSLog(@"%@", item);
        }
        
        itemsNumbers = nil;
        
        BNRItem *item = [[BNRItem alloc] init];

        // This creates an NSString, "Red Sofa" and gives it to the BNRItem
        [item setItemName:@"Red Sofa"];
        // This creates an NSString, "A1B2C" and gives it to the BNRItem
        [item setSerialNumber:@"A1B2C"];
        
        // This sends the value 100 to be used as the valueInDollars of this BNRItem
        [item setValueInDollars:100];
        
        NSLog(@"%@", item);

        item = nil;
        
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        BNRItem *backpack = [[BNRItem alloc] initWithItemName:@"Backpack"];
        [items addObject:backpack];
        
        BNRItem *calculator = [[BNRItem alloc] initWithItemName:@"Calculator"];
        [items addObject:calculator];
        
        //backpack.containedItem = calculator;
        
        backpack = nil;
        calculator = nil;
        
        for (BNRItem *item in items)
            NSLog(@"%@", item);
        
        NSLog(@"Setting items to nil...");
        items = nil;
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
