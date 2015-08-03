//
//  ViewControllerSpecs.m
//  KiwiSpecPluginIssueReproduce
//
//  Created by Kevin Wolkober on 8/3/15.
//  Copyright (c) 2015 Kevin Wolkober. All rights reserved.
//

#import "Kiwi.h"
#import "ViewController.h"

SPEC_BEGIN(ViewControllerSpecs)

describe(@"ViewController", ^{
    __block ViewController *controller;

    beforeEach(^{
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        controller = [storyboard instantiateInitialViewController];
        [[controller.view shouldNot] beNil];
    });

    describe(@"outlets", ^{
        it(@"should set the this label", ^{
            [[controller.thisLabel shouldNot] beNil];
        });

        it(@"should set the is label", ^{
            [[controller.isLabel shouldNot] beNil];
        });

        it(@"should set the a label", ^{
            [[controller.aLabel shouldNot] beNil];
        });

        it(@"should set the test label", ^{
            [[controller.testLabel shouldNot] beNil];
        });
    });
});

SPEC_END
