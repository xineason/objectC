
#import "UIImage+Ext.h"

@implementation UIImage (Ext)

+ (UIImage *)imageWithName:(NSString *)name
{
    UIImage *image = nil;
    if (OSVersionIsAtLeast(7.0)) { // 处理iOS7的情况
        NSString *newName = [name stringByAppendingString:@"_os7"];
        image = [UIImage imageNamed:newName];
    }
    
    if (image == nil) {
        image = [UIImage imageNamed:name];
    }
    return image;
}

+ (UIImage *)resizedImage:(NSString *)name
{
    UIImage *image = [UIImage imageWithName:name];
    return [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height * 0.5];
}


+ (UIImage*) createImageWithColor: (UIColor*) color
{
    CGRect rect=CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}


@end
