//
//  CTMediator+My.h
//  CTMediator
//
//  Created by Mikey on 2018/1/9.
//

#import <Foundation/Foundation.h>
#import <CTMediator/CTMediator.h>

@interface CTMediator (My)

- (UIViewController *)A_aViewControllerWithCallback:(void(^)(NSString *result))callback;

@end
