//
//  ToDo+CoreDataProperties.h
//  ToDoCoreData
//
//  Created by Tim Beals on 2016-11-23.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "ToDo+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface ToDo (CoreDataProperties)

+ (NSFetchRequest<ToDo *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *toDoTitle;
@property (nullable, nonatomic, copy) NSString *toDoDescription;
@property (nonatomic) BOOL toDoIsComplete;
@property (nonatomic) int16_t toDoPriority;

@end

NS_ASSUME_NONNULL_END
