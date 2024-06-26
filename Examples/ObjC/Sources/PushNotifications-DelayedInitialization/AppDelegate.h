@import UIKit;
@import UserNotifications;
@import BrazeKit;

extern NSString *const brazeApiKey;
extern NSString *const brazeEndpoint;

@interface AppDelegate: UIResponder <UIApplicationDelegate>

@property(class, strong, nonatomic) Braze *braze;

+ (void)initializeBraze;

@end
