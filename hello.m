#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    NSLog(@"hello world!%d-%d-%d", 2015, 9, 23);
    [pool drain];
    return 0;
}



