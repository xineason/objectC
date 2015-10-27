
#import <UIKit/UIKit.h>

/**
 *  image 工具类
 */
@interface UIImage (Ext)

/**
 *根据图片名自动加载适配IOS6和iOS7的图片
 */
+ (UIImage *)imageWithName:(NSString *)name;

/**
 *  根据图片名返回一张能自由拉伸的图片
 */
+ (UIImage *)resizedImage:(NSString *)name;


+ (UIImage*) createImageWithColor: (UIColor*) color;

@end
