//  main.m
//  ageApp
//
//  Created by Krishna on 6/3/15.
//
#import <Foundation/Foundation.h>
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //tryobjective-C cheat sheet
        //output a basic string using NSLog
        NSLog(@"Hello, Mr. Higgie.");
        
        
        //creating an NSString object then using NSLog for displaying
        //use "NSString *StringName;" to declare the object
        NSString *introText = @"My name is";
        NSString *firstName = @"FirstName";
        NSString *lastName = @"LastName";
        
        //To log display/output to screen and avoid "Format string is not a stirng literal(potentially insecure)" msg:
        // >>'NSLog(@"%@", variableName' <<
        NSLog(@"%@, %@ %@",introText, firstName, lastName);

        //Creating number objects
        //this as different properties not afforded to int (or other primitive types)
        NSNumber *age = @99;
        NSLog(@"%@", age);
        
        //storing the results of the 'length' message that returns an NSUInteger
        NSString *city = @"Ice World";
        NSUInteger cityLength = [city length];
        NSLog(@"the variable City has %lu characters in it",(unsigned long)cityLength);

        //how to perform operations on NSNumber objects
        //assign value to NSNUmber variables
        NSNumber *higgiesAge = @6;
        NSNumber *phoneLives = @3;
        
        //create NSUInteger value to represent NSnumber variables
        NSUInteger higgiesAgeInt = [higgiesAge unsignedIntegerValue];
        NSUInteger phoneLivesInt = [phoneLives unsignedIntegerValue];

        //perform operaition and store it in a variable
        NSUInteger higgiesRealAge = higgiesAgeInt * phoneLivesInt;
        //log the output
        NSLog(@"higges real age is %lu", (unsigned long)higgiesRealAge);

        //appending strings
        NSString *fullName =[firstName stringByAppendingString:lastName];
        NSLog(@"my full name is %@", fullName);

        //using nested messages to create a space between two appended objects
        NSString *firstNamePlusSpace = [firstName stringByAppendingString:@" "];
        NSString *fullNamePlusSpace= [firstNamePlusSpace stringByAppendingString:lastName];
        NSLog(@"%@",fullNamePlusSpace);

        //passing multiple arguments to achive results of above example using less code
        NSString *NewfullName = [[firstName stringByAppendingString:@" "] stringByAppendingString:lastName];
        NSLog(@"%@",NewfullName);

        //creating a copy of a string
        NSString *copy = [NSString stringWithString:firstName];
        NSLog(@"%@",copy);
        
        
        NSLog(@"**********************************************************\n\n");
        NSLog(@"working with arrays");
        NSLog(@"**********************************************************\n\n");
        
        //creating and initializing an empty array so you can USE it later
        NSArray *emptyArray = [[NSArray alloc] init];
        NSLog (@"contents of emptyArray = %@",emptyArray);
        
        //creating an nonEmpty array with objects
        NSArray *nonEmptyArray = [[NSArray alloc]initWithObjects:@"one",@"two",@"three",@"four",nil];
        NSLog (@"contents of nonemptyArray =%@",nonEmptyArray);
        
        //creating an empty array that has capacity
        NSMutableArray *arrayWCapacity = [[NSMutableArray alloc]initWithCapacity:10];
        NSLog (@"contents of arrayMadeWithCapacity = %@",arrayWCapacity);
        
        [arrayWCapacity addObject:@"ObjectZero"];
        [arrayWCapacity addObject:@"ObjectOne"];
        [arrayWCapacity addObject:@"ObjectTwo"];
         [arrayWCapacity addObject:@"ObjectThree"];
         [arrayWCapacity addObject:@"ObjectFour"];

        
        [arrayWCapacity removeObject:@"ObjectZero"];
        
        
        
        NSLog (@"results of addObjects = %@",arrayWCapacity);
        NSLog (@"calling the first two elements of the array = %@,%@",arrayWCapacity[0],arrayWCapacity[1]);


        //creating an array of objects
               NSArray *appsArray = @[@"AngryFowl",@"Lettertouch",@"Tweetrobot"];
        NSLog(@"display all items in appsArray %@",appsArray);
        
        NSLog(@"**************************************************************\n\n");
        //NSArray *appsArray = @[@"AngryFowl",@"Lettertouch",@"Tweetrobot"];
        NSLog(@"");
        NSLog(@"display appsArray item at index 0: %@",appsArray[0]);
        
        //using index number to access elements in an array
        NSLog(@"display appsArray item at index1: %@",appsArray[1]);
        NSLog(@"**************************************************************\n\n");
        //do it with a loop
        for (int i = 0 ; i < 3; i++)
        {
            NSLog (@"Print out full appsArray using a loop[%d]: %@",i,appsArray[i]);
        }
        NSLog(@"**************************************************************\n\n");
        

        
        //recreating an immutiable NSArray to add a new element to it (this is the only way to "update" an NSArray since they cannot be altered
        appsArray = @[@"AngryFowl",@"Lettertouch",@"Tweetrobot",@"Instacanvas"];

        //calling a method = sending messages to an object [objectName messageName];
        //in this case sending the 'description' message to the NSArray apps
        
        
        NSLog(@"results of sending the description msg to appsArray %@",[appsArray description]);
        NSLog(@"**************************************************************\n\n");
        
        //storing the results of the 'description' message in a variable
        NSString *result = [appsArray description];
        NSLog(@"storing the results of the 'description' message in a variable %@",result);
        //adding to array together forming a mulit-dimensional array
        
        NSMutableArray *multiArrayOfArrays = [[NSMutableArray alloc]init];
        
        [multiArrayOfArrays arrayByAddingObjectsFromArray:appsArray];
        
        NSLog(@"multiArrayOfArrays results %@",multiArrayOfArrays);

        
        
        
        
        
        
        
        NSLog(@"**********************************************************\n\n");
        NSLog(@"working with Dictionaries");
        NSLog(@"**********************************************************\n\n");
        
        
        //creating a dictionary>>format={keyName0:value0,keyName1:value1}
        NSDictionary *appRatings = @{@"keyName":@"value",
                                     @"AngryFowl": @3,
                                     @"Lettertouch": @5,
                                     @"BeJellyed": @7};
        
        NSLog(@"\n print out appRatings Dictionary %@",appRatings);
        NSLog(@"**************************************************************\n\n");
        
        //accessing value of a dictionary using keyName
        NSLog(@"the value of keyName Lettertouch is:  %@", appRatings[@"Lettertouch"]);
        
        NSLog(@"**************************************************************\n\n");
        
        
        
        //sending init to empty object
        //if statements and BOOL types
        
        BOOL mrHiggieIsMean = NO;
        //when this statement is true
        if (mrHiggieIsMean) {
            //do this
            NSLog(@"Confirmed: he is super mean");
        }
        
        //using the ! sign as the negation operator
        //this statement converts the BOOL above from NO to YES
        if (!mrHiggieIsMean) {
            //do this
            NSLog(@"Confirmed: he is super mean");
        }

        //if else operators
        
        if (mrHiggieIsMean) {
            //do this
            NSLog(@"Confirmed: he is super mean");
        }
        else {
            NSLog(@"No, actually he's really nice");
        }
        
        //using elseif to handle more than two choices
        // arc4random() is a random number generator, % 10 gives it range from 0 - 9
        int mrHiggieIsMeanInt = arc4random() % 10;
        if(mrHiggieIsMeanInt > 3) {
            //do this
            NSLog(@"Confirmed: he is super mean");
        }
        
        else if(mrHiggieIsMean > 8) {
            //do this
            NSLog(@"Mr. Higgie is sorta nice but not really");
        }
        //if all else fails do this
        else {
            NSLog(@"Mr. Higgie is definitely mean");
        }

        // random number generator used for selecting random used as index numbers for allHats array
        int i = arc4random() % 3;
        NSArray *allHats = @[@"Sombrero",@"Fedora",@"Durby"];
        NSString *currentHat = allHats[i];
        
        //using isEqualToString to compare hat from array (random) with preselected hat
        if([currentHat isEqualToString:@"Sombrero"]){
            NSLog(@"Ese es un muy buen somrero");
        }else if ([currentHat isEqualToString:@"Fedora"]){
            NSLog(@"Mr.Higgie was an iPhone before there was iPhone");
            
        }else {
            NSLog(@"Mr.Higgie is currently hatless");
        }
        
        //switches a better way to compute if/else when you have many options
        NSInteger day = arc4random() % 8;
        switch (day) {
            case 1:
            case 2:
            case 3:
            case 4: {
                NSLog(@"Todays hat is %@:",@"Fedora");
                break;
            }
            case 5: {
                NSLog(@"Todays hat is %@:",@"Sombrero");
                break;
            }
            case 6:
            case 7: {
                NSLog(@"Todays hat is %@:",@"Durby");
                break;
                break;
            }
        }
        //Using "enum" to mask case integer for easy reading
        typedef NS_ENUM(NSInteger, DayOfWeek){
            DayOfWeekMonday = 1,
            DayOfWeekTueday = 2,
            DayOfWeekWednesday = 3,
            DayOfWeekThursday = 4,
            DayOfWeekFriday = 5,
            DayOfWeekSaturday = 6,
            DayOfWeekSunday =7
        };
        //note NSInteger is aliased as DayOfWeek
        DayOfWeek newDay = arc4random() % 8;
        switch (newDay) {
            case DayOfWeekMonday:
            case DayOfWeekTueday:
            case DayOfWeekWednesday:
            case DayOfWeekThursday: {
                NSLog(@"Todays new hat is: %@",@"Fedora");
                break;
            }
            case DayOfWeekFriday: {
                NSLog(@"Todays new hat is %@",@"Somrero");
                break;
            }
                
            case DayOfWeekSaturday: {
                NSLog(@"Todays new hat is %@",@"Durby");
                break;
            }
                
            case DayOfWeekSunday: {
                NSLog(@"Todays new hat is %@",@"Cowboy");
                break;
            }
        }
        
        //enumerating a dictionary
        
        //create dictionary and populate it with keyNames and values
        NSDictionary *funnyWords= @{
                                    @"Schadenfreude":@"Pleasure derived by someone from another person's misforture",
                                    @"Portmanteau":@"consisting of or combining two or more separable aspecs or qualites",
                                    @"Penultimate":@"Second to the last"
                                    
                                    };
        //for statement used for iterating through the dictionary
        for(NSString *word in funnyWords) {
            NSString *definition = funnyWords[word];
            NSLog(@"%@ is defined as %@", word, definition);
        }
        
        //formatting code block
        //this creates a method/block code called 'myFirstBlock' that logs/displays text passed to it within the ()
        void(^myFirstBlock)(NSString *)=^(
                                          NSString * text){
            NSLog(@"Block message is: %@",text);
        };
        //calling the method/block code
        myFirstBlock(@"this is text passed to the block variable");
        
        
        //NSArray using for loop --fast enumeration example #1
        //create the newHats array
        NSArray *newHats = @[
                             @"Cowboy",@"Conductor",@"Baseball",@"Beanie",@"Beret",@"Free"
                             ];
        //use for statement to iterate thru the array
        for (NSString *hat in newHats) {
            NSLog(@"Trying on hat %@", hat);
            
        }
        
        //enumeration example #2 using the "enumerateObjectsUsingBlock" statement
        //pass message block to newHats
        [newHats enumerateObjectsUsingBlock:^(NSString *hat, NSUInteger index, BOOL * stop){
            NSLog(@"%@ is a type of hat", hat);
        }
         
         ];
        
        //enunmeration example #3 passing array to varible
        void (^enumeratingBlock)(NSString *, NSUInteger, BOOL *) =
        ^(NSString *hat, NSUInteger index, BOOL *stop){
            NSLog(@"%@ is a new type of hat i can wear", hat);
            
        };
        
        [newHats enumerateObjectsUsingBlock:enumeratingBlock];
        return 0;
        
        
        
    }
}