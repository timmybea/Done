//
//  ToDo+CoreDataProperties.m
//  ToDoCoreData
//
//  Created by Tim Beals on 2016-11-23.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "ToDo+CoreDataProperties.h"

@implementation ToDo (CoreDataProperties)

+ (NSFetchRequest<ToDo *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"ToDo"];
}

@dynamic toDoTitle;
@dynamic toDoDescription;
@dynamic toDoIsComplete;
@dynamic toDoPriority;

@end
