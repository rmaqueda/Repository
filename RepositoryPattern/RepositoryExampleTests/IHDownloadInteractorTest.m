//
//  IHDownloadInteractorTest.m
//  RepositoryExample
//
//  Created by Ricardo Maqueda on 30/06/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "IHDownloadInteractor.h"
#import "IHRepository.h"

#define HC_SHORTHAND
#import <OCHamcrest/OCHamcrest.h>

#define MOCKITO_SHORTHAND
#import <OCMockito/OCMockito.h>

@interface IHDownloadInteractorTest : XCTestCase

@property (strong, nonatomic) IHDownloadInteractor *sut;
@property (strong, nonatomic) IHRepository *repository;

@end

@implementation IHDownloadInteractorTest

- (void)setUp
{
    [super setUp];
    self.repository = mock([IHRepository class]);
    self.sut = [[IHDownloadInteractor alloc] initWithRepository:self.repository];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testDownloadsWorking {
    [self.sut download];
    [verify(self.repository) downloadShows];
}



@end
