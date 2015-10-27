
#import <UIKit/UIKit.h>
#import "UIView+Ext.h"


@interface UIBarButtonItem (Extension)
+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage;
@end
