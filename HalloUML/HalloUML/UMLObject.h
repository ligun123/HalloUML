//
//  HWUMLObject.h
//  HalloUML
//
//  Created by HalloWorld on 14-3-6.
//  Copyright (c) 2014年 HalloWorld. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  UML元素的超类,派生出线图HWLine和框图HWBox
 */
@interface UMLObject : NSObject

/**
 *  返回一个UML元素的示例View
 */
- (UIView *)caseView;

/**
 *  返回该UML元素的View
 */
- (UIView *)view;

@end
