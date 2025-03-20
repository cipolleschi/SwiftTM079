//  RCTNativeLocalStorage.m
//  TurboModuleExample

#import "RCTNativeLocalStorage.h"
#import "SwiftTM079-Swift.h"


@interface RCTNativeLocalStorage()

@end

@implementation RCTNativeLocalStorage {
  NativeLocalStorage *storage;
}

- (id) init {
  if (self = [super init]) {
    storage = [NativeLocalStorage new];
  }
  return self;
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const facebook::react::ObjCTurboModule::InitParams &)params {
  return std::make_shared<facebook::react::NativeLocalStorageSpecJSI>(params);
}

- (NSString * _Nullable)getItem:(NSString *)key {
  return [storage getItemFor:key];
}

- (void)setItem:(NSString *)value
          key:(NSString *)key {
  [storage setItemFor:key value:value];
}

- (void)removeItem:(NSString *)key {
  [storage removeItemFor:key];
}

- (void)clear {
  [storage clear];
}

+ (NSString *)moduleName
{
  return @"NativeLocalStorage";
}

@end
