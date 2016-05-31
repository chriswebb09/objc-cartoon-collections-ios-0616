//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs {
    
    NSUInteger index = 0;
    NSString *formattedString = @"";
    
    for (NSString *dwarf in dwarfs) {
        
        index += 1;
        
        NSString *divider = @" | ";
        
        formattedString = [formattedString stringByAppendingFormat:@"%lu. %@", index, dwarf];
        
        if (dwarf == [dwarfs lastObject]) {
            break;
        } else {
            formattedString = [formattedString stringByAppendingString:divider];
        }
        
    }
    
    return formattedString;
}

- (NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers {
    NSMutableArray *powersArray = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < [powers count]; i++){
        NSString *power = powers[i];
        power = [power uppercaseString];
        power = [power stringByAppendingFormat:@"!"];
        [powersArray addObject:power];
    }
    return powersArray;
}

- (NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers {
    NSString *catchPhraseStart = @"Let our powers combine:";
    NSUInteger index = 0;
    for (NSString *power in [self arrayOfPlaneteerShoutsFromArray:powers]) {
        NSString *catchPhraseBody = @"\n";
        catchPhraseBody = [catchPhraseBody stringByAppendingString:power];
        catchPhraseStart = [catchPhraseStart stringByAppendingString:catchPhraseBody];
        index++;
    }
    catchPhraseStart = [catchPhraseStart stringByAppendingFormat:@"\nGo Planet!"];
    return catchPhraseStart;
}

- (NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames {
    NSString *finalCheese = @"";
    NSUInteger index = 0;
    for (NSString *cheese in cheesesInStock) {
        if ([premiumCheeseNames containsObject:cheese]) {
            finalCheese = [finalCheese stringByAppendingString:cheese];
            break;
        }
        index++;
    }
    if ([finalCheese length] < 1) {
        finalCheese = @"No premium cheeses in stock.";
    }
    return finalCheese;
}

- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags {
    NSMutableArray *muteArray = [[NSMutableArray alloc] init];
    for (NSString *bag in moneyBags) {
        NSUInteger dollarCount = [[bag componentsSeparatedByString:@"$"] count] - 1;
        NSString *stringDollarCount = [NSString stringWithFormat:@"%lu", dollarCount];
        NSString *dollaBills = @"$";
        dollaBills = [dollaBills stringByAppendingString:stringDollarCount];
        [muteArray addObject:dollaBills];
    }
    NSArray *moneyArray = [muteArray copy];
    return moneyArray;
}

@end
