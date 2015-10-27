
#import "NSString+contains.h"

@implementation NSString (contains)

- (BOOL)containsString:(NSString*)other
{
    NSRange range = [self rangeOfString:other];
    return range.length != 0;
}


@end
