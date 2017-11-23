//
//  DTUUID.m
//  grid
//
//  Created by detao on 2017/4/14.
//  Copyright © 2017年 德稻全球创新网络（北京）有限公司. All rights reserved.
//

#import "DTUUIDManager.h"
#define k_DTTRADE_UUID @"DTTRADEUUID"


@implementation DTUUIDManager

singleTon_m(DTUUIDManager);

-(NSString *)dt_getUUID{
   NSString *uuid = [SAMKeychain passwordForService:self.baseUrl account:k_DTTRADE_UUID];
    if (!uuid) {
        [SAMKeychain setPassword:[NSString stringWithUTF8String:DT_GET_UDID()] forService:self.baseUrl account:k_DTTRADE_UUID];
        return [SAMKeychain passwordForService:self.baseUrl account:k_DTTRADE_UUID];
        
    }
    return uuid;
}

 char const  * DT_GET_UDID() {
                char  chars[] = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
                static char tmpid[36];
                int r;
                tmpid[8] = tmpid[13] = tmpid[18] = tmpid[23] = '-';
                tmpid[14] = '4';
     
                for (int i=0; i<36; i++) {
                    if (!tmpid[i]) {
                        r = rand() % 16;
//                        r = 0| Math.random()*16;
                        tmpid[i] = chars[(i==19) ? (r & 0x3) | 0x8 : r];
                    }
                }
				return tmpid;
}
@end
