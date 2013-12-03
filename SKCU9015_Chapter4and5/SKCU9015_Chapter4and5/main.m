//
//  main.m
//  SKCU9015_Chapter4and5
//
//  Created by timkao on 13/11/28.
//  Copyright (c) 2013年 skl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IPerson.h"
#import "Leader.h"
#import "Member.h"
#import "Company.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //Create
        Company *skl = [[Company alloc]initWitName:@"新光三越"];
        
        //老闆定義
        Leader *leader1 = [[Leader alloc]initWthFirstName:@"Leader" LastName:@"Wang" Sex:@"Male" Age:30 Salary:500000];
        leader1.title = @"經理";
        leader1.skill = @"執行專案";
        
        //員工定義
        Member *m1 = [[Member alloc]initWthFirstName:@"Member" LastName:@"Kao" Sex:@"Male" Age:24 Salary:40000];
        m1.title = @"美工組長";
        m1.skill = @"ＵＩ美化";
        m1.Marriage = @"一言難盡";
       
        Member *m2 = [[Member alloc]initWthFirstName:@"Member" LastName:@"Lebron" Sex:@"Male" Age: 31 Salary:60000];
        m2.title = @"研發人員";
        m2.skill = @"產品研發";
        m2.Marriage = @"幸福美滿";
        
        Member *m3 = [[Member alloc]initWthFirstName:@"Member" LastName:@"Chen" Sex:@"Female" Age: 18 Salary:30000];
        m3.title = @"人才資訊";
        m3.skill = @"人力管理";
        m3.Marriage = @"單身中";
        
        //將所有員工加入公司
        [skl addEmployee:leader1];
        [skl addEmployee:m1];
        [skl addEmployee:m2];
        [skl addEmployee:m3];
        
        //員工歸屬哪個leader管理
        [leader1 addMembers:m1];
        [leader1 addMembers:m2];
        [leader1 addMembers:m3];
        
        //員工委派主管調薪
        m1.m_delegate = leader1;
        m2.m_delegate = leader1;
        m3.m_delegate = leader1;
        
        //執行運作
        [skl showEmployee];
        [leader1 showMembers];
        NSLog(@"--主管介紹--");
        [leader1 description];
        NSLog(@"--員工介紹--");
        [m1 description];
        [m2 description];
        [m3 description];
        NSLog(@"--調薪人員--");
        //提議調薪 待主管裁示
        [m1 adjSalary];
        [m2 adjSalary];
        [m3 adjSalary];
        
    }
    return 0;
}

