//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringWithDeliLine: (NSArray *) deliLine {
   
    NSString *line = @"The line is:";
    
    if ([deliLine count] == 0)
    {
        return @"The line is currently empty.";
    }
    
    else
    {
        for ( NSInteger i = 0; i < [deliLine count]; i++)
        {
        line = [line stringByAppendingString: @"\n"];
        line = [line stringByAppendingString: [NSString stringWithFormat:@"%li. ", i +1]];
        line = [line stringByAppendingString: deliLine[i]];
        }
    }
    return line;
    
    
}

- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *) deliLine {
    [deliLine addObject: name];
}

- (NSString *)serveNextCustomerInDeliLine: (NSMutableArray*) deliLine
{
    
    NSString *firstword = deliLine[0];
    [deliLine removeObjectAtIndex: 0];
    
    return firstword;
}


@end
