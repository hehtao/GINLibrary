#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "DTUUIDManager.h"
#import "SAMKeychain.h"
#import "SAMKeychainQuery.h"

FOUNDATION_EXPORT double GINLibraryVersionNumber;
FOUNDATION_EXPORT const unsigned char GINLibraryVersionString[];

