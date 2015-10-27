
#import "UIBarButtonItem+Extension.h"


@implementation UIBarButtonItem (Extension)
/**
 *  创建一个item
 *  
 *  @param target    点击item后调用哪个对象的方法
 *  @param action    点击item后调用target的哪个方法
 *  @param image     图片
 *  @param highImage 高亮的图片
 *
 *  @return 创建完的item
 */
+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage
{
    UIImage *imageNormal = [UIImage imageNamed:image];
    UIImage *imageHigh = [UIImage imageNamed:highImage];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, imageNormal.size.width, imageNormal.size.height);
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    // 设置图片
    [btn setImage:imageNormal forState:UIControlStateNormal];
    [btn setImage:imageHigh forState:UIControlStateHighlighted];
    // 设置尺寸
    btn.size = btn.currentBackgroundImage.size;
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}
@end
