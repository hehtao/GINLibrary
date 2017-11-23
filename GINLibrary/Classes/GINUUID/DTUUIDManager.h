//
//  DTUUID.h
//  grid
//
//  Created by detao on 2017/4/14.
//  Copyright © 2017年 德稻全球创新网络（北京）有限公司. All rights reserved.
//


#define singleTon_h(name) +(instancetype)shared##name;
#define singleTon_m(name)\
static id _instancetype;\
\
+(instancetype)shared##name{\
static dispatch_once_t onceToken;\
dispatch_once(&onceToken, ^{\
_instancetype = [[self alloc]init];\
});\
return _instancetype;\
}\
+(instancetype)allocWithZone:(struct _NSZone *)zone{\
static dispatch_once_t onceToken;\
dispatch_once(&onceToken, ^{\
_instancetype = [super allocWithZone:zone];\
});\
return _instancetype;\
}\
\
-(id)copyWithZone:(NSZone *)zone{\
return _instancetype;\
}


#import <Foundation/Foundation.h>
#import "SAMKeychain.h"

@interface DTUUIDManager : NSObject
@property(copy,nonatomic) NSString *baseUrl;
singleTon_h(DTUUIDManager);
-(NSString *)dt_getUUID;
char const  * DT_GET_UDID(void);
@end
