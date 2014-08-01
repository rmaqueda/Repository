//
//  IHDownloadInteractor.m
//  RepositoryExample
//
//  Created by Ricardo Maqueda on 30/06/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import "IHDownloadInteractor.h"
#import "IHRepository.h"

@interface IHDownloadInteractor ()
@property (strong, nonatomic) IHRepository *repository;
@end

@implementation IHDownloadInteractor

- (instancetype)initWithRepository:(IHRepository *)respository {
    if (self = [super init]) {
        _repository = respository;
    }
    return self;
}

- (void)download {
//    [self.repository downloadShows];
}

@end
