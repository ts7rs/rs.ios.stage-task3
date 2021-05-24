#import "PlayersSeparator.h"

@implementation PlayersSeparator

- (NSInteger)dividePlayersIntoTeams:(NSArray<NSNumber *>*)ratingArray {
    
    int ok = 0;

    for(int i=0; i<ratingArray.count; i++){
      for(int j = i+1; j<ratingArray.count; j++){
        for (int k = j+1; k<ratingArray.count; k++){
          if(0 <= i && i < j && j < k && k < ratingArray.count){
            if([ratingArray[i] intValue] < [ratingArray[j] intValue] && [ratingArray[j] intValue] < [ratingArray[k] intValue] ) {
              ok++;
            }
            if (ratingArray[i].intValue > ratingArray[j].intValue &&  ratingArray[j].intValue > ratingArray[k].intValue){
              ok++;
            }
          }
        }
      }
    }
return ok;
}
@end
