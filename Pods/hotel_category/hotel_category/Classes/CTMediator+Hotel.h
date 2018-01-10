//
//  CTMediator.h
//  hotel_category
//
//  Created by Mikey on 2018/1/10.
//

#import <Foundation/Foundation.h>
#import <CTMediator/CTMediator.h>

@interface CTMediator (Hotel)

- (UIViewController *)hotelViewControllerWithCallback:(void(^)(NSString *result))callback;

@end
