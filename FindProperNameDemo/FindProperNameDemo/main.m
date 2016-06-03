//
//  main.m
//  FindProperNameDemo
//
//  Created by Kingson on 6/3/16.
//  Copyright © 2016 Kingson. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
         // 读入文件并将数据保存在字符串中（没有处理可能发生的错误）
        NSString *nameString = [NSString
                                stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                encoding:NSUTF8StringEncoding
                                error:NULL];
        // 将所得字符串按"\n"进行分割，并保存在数组中
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        NSArray *words = @[@"woldy", @"Wolf", @"wolf", @"wolfachite", @"wolfberry", @"wolfdom", @"wolfen", @"wolfen", @"wolfen"];
        // 枚举数组，一次处理一个字符串
        for (NSString *word in words) {
            for (NSString *n in names) {
                // 查找字符串"aa"（忽略大小写）
                NSRange r = [n rangeOfString:word options:NSLiteralSearch];
                // 是否找到？
                if (r.location != NSNotFound) {
                    NSLog(@"%@", word);
                    break;
                }
            }

        }
    }
    return 0;
}
