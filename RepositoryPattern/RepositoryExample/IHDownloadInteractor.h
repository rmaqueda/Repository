//
//  IHDownloadInteractor.h
//  RepositoryExample
//
//  Created by Ricardo Maqueda on 30/06/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import <Foundation/Foundation.h>

@class IHRepository;

@interface IHDownloadInteractor : NSObject

- (instancetype)initWithRepository:(IHRepository *)respository;
- (void)download;


@end
