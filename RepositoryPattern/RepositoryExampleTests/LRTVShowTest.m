//
//  LRTVShowTest.m
//  RepositoryExample
//
//  Created by Ricardo Maqueda on 30/06/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "LRTVShow.h"

#define EXP_SHORTHAND
#import "Expecta.h"

@interface LRTVShowTest : XCTestCase

@property (strong, nonatomic)LRTVShow *sut;

@end

@implementation LRTVShowTest

- (void)setUp
{
    [super setUp];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testTVShowAttributes {
    NSDictionary *showDictionary = @{@"title" : @"titulo", @"overview" : @"myOverview", @"network" : @"myNetwork", @"first_aired": @715676400 , @"url":@"URL", @"poster":@"URL2"};
    
    self.sut = [LRTVShow tvshowWithDictionary:showDictionary];
    
    expect(self.sut.title).to.equal(showDictionary[@"title"]);
    expect(self.sut.overview).to.equal(showDictionary[@"overview"]);
    expect(self.sut.network).to.equal(showDictionary[@"network"]);
    expect(self.sut.premiereDate).to.equal([NSDate dateWithTimeIntervalSince1970:[showDictionary[@"first_aired"] doubleValue]]);
    expect(self.sut.traktURL).to.equal([NSURL URLWithString:showDictionary[@"url"]]);
    expect(self.sut.posterURL).to.equal([NSURL URLWithString:showDictionary[@"poster"]]);
}


@end
