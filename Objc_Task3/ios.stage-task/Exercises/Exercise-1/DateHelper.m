#import "DateHelper.h"

@implementation DateHelper

#pragma mark - First

-(NSString *)monthNameBy:(NSUInteger)monthNumber {
    
    long num = monthNumber;
    NSArray *myArray = @[@"nil", @"January", @"February",@"March", @"April",@"May",@"June",@"July",@"August",@"September",@"October",@"November",@"December"];
    
   if(num == 0){
     return nil;
   }
    
   if (num>myArray.count){
     return nil;
   }
   else {
     NSString *month = myArray[num];
     return month;
   }
}

#pragma mark - Second

- (long)dayFromDate:(NSString *)date {
    
    NSArray *new = [date componentsSeparatedByString:@"T"];
    NSString *myString = new[0];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyy-MM-dd"];
    NSDate *myDate = [dateFormat dateFromString:myString];
    NSCalendar *calendar = [NSCalendar autoupdatingCurrentCalendar];
    [calendar setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:800]];

    if (myDate){
      NSString *dateString = [dateFormat stringFromDate:myDate];
      NSArray *new1 = [dateString componentsSeparatedByString:@"-"];
      int day = [(NSNumber *)[new1 objectAtIndex:2] intValue];
      return day;
    }
    return 0;
}

#pragma mark - Third

- (NSString *)getDayName:(NSDate*) date {
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"E MMM dd HH:mm:ss yyyy";
    dateFormatter.locale =[[NSLocale alloc] initWithLocaleIdentifier:@"ru"];
    NSString *dateString = [dateFormatter stringFromDate:date];
    NSDate *myDate = [dateFormatter dateFromString:dateString];
    NSCalendar *calendar = [NSCalendar autoupdatingCurrentCalendar];
    [calendar setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:800]];
    
    if(myDate){
      NSArray *new = [dateString componentsSeparatedByString:@" "];
      NSString *myString = new[0];
      return myString;
    }
    return nil;
}

#pragma mark - Fourth

- (BOOL)isDateInThisWeek:(NSDate *)date {
    NSDate* dateNow = [NSDate date];
    BOOL sameWeek = [[NSCalendar currentCalendar] isDate:date equalToDate:dateNow
        toUnitGranularity:NSCalendarUnitWeekOfYear];
    return sameWeek;
}
@end
