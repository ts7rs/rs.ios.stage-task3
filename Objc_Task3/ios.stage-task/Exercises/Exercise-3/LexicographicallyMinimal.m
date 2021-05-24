#import "LexicographicallyMinimal.h"

@interface LexicographicallyMinimal()

@property (nonatomic, strong) NSMutableString *resultString;

@end

@implementation LexicographicallyMinimal

-(NSString *)findLexicographicallyMinimalForString1:(NSString *)string1 andString2:(NSString *)string2 {
    
    NSMutableArray *myMutableArray = [[NSMutableArray alloc] init];
    NSMutableArray *bufferArray = [[NSMutableArray alloc] init];
    NSMutableArray *arrayString1Mutable = [[NSMutableArray alloc]init];
    NSMutableArray *arrayString2Mutable = [[NSMutableArray alloc]init];
    
    [string1 enumerateSubstringsInRange:NSMakeRange(0, [string1 length])
                                options:(NSStringEnumerationByComposedCharacterSequences)
                             usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
        [arrayString1Mutable addObject:substring];
    }];
    
    [string2 enumerateSubstringsInRange:NSMakeRange(0, [string2 length])
                                options:(NSStringEnumerationByComposedCharacterSequences)
                             usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
        [arrayString2Mutable addObject:substring];
    }];

    if([arrayString1Mutable isEqualToArray: arrayString2Mutable]){
      while (arrayString2Mutable.count && arrayString1Mutable.count && arrayString2Mutable[0] && arrayString1Mutable[0]){
        [myMutableArray addObject:arrayString1Mutable[0]];
        [arrayString1Mutable removeObjectAtIndex:0];
        [myMutableArray addObject:arrayString2Mutable[0]];
        [arrayString2Mutable removeObjectAtIndex:0];
      }
    }

   while (arrayString2Mutable.count && arrayString1Mutable.count && arrayString2Mutable[0] && arrayString1Mutable[0]){
     if((arrayString2Mutable[0] == arrayString1Mutable[0]) && arrayString2Mutable[0] && arrayString1Mutable[0] && arrayString2Mutable.count && arrayString1Mutable.count){
       [myMutableArray addObject:arrayString1Mutable[0]];
       [arrayString1Mutable removeObjectAtIndex:0];
     }
     if(arrayString2Mutable[0] && arrayString1Mutable[0]){
       [bufferArray addObject:arrayString2Mutable[0]];
       [bufferArray addObject:arrayString1Mutable[0]];
       [bufferArray sortUsingSelector:@selector(compare:)];
     if(bufferArray[0]){
       [myMutableArray addObject:bufferArray[0]];
     }
     }
     if(bufferArray[0] == arrayString1Mutable[0] && arrayString1Mutable[0]){
       [arrayString1Mutable removeObjectAtIndex:0];
     }
     if(bufferArray[0] == arrayString2Mutable[0] && arrayString2Mutable[0]){
       [arrayString2Mutable removeObjectAtIndex:0];
     }
     if(arrayString1Mutable.count == 0 && arrayString2Mutable[0] ){
       [myMutableArray addObjectsFromArray: arrayString2Mutable];
     }
     if(arrayString2Mutable.count == 0 && arrayString1Mutable[0] ){
       [myMutableArray addObjectsFromArray: arrayString1Mutable];
     }
     if(bufferArray[0]){
       [bufferArray removeAllObjects];
     }
  }
    NSString *result = [myMutableArray componentsJoinedByString:@""];
    return result;
}
@end
