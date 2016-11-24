//
//  AddToDoViewController.m
//  Done
//
//  Created by Tim Beals on 2016-11-24.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "AddToDoViewController.h"
#import <CoreData/CoreData.h>

@interface AddToDoViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;

@end

@implementation AddToDoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)saveAction:(UIBarButtonItem *)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
    
        // Helpers
        NSString *name = self.titleTextField.text;
        
        if (name && name.length)
        {
            // Create Entity
            NSEntityDescription *entity = [NSEntityDescription entityForName:@"Item" inManagedObjectContext:self.managedObjectContext];
            
            // Initialize Record
            NSManagedObject *record = [[NSManagedObject alloc] initWithEntity:entity insertIntoManagedObjectContext:self.managedObjectContext];
            
            // Populate Record
            [record setValue:name forKey:@"name"];
            [record setValue:[NSDate date] forKey:@"createdAt"];//**
            
            // Save Record
            NSError *error = nil;
            
            if ([self.managedObjectContext save:&error])
            {
                // Dismiss View Controller
                [self dismissViewControllerAnimated:YES completion:nil];
                
            }
            else
            {
                if (error)
                {
                    NSLog(@"Unable to save record.");
                    NSLog(@"%@, %@", error, error.localizedDescription);
                }
            }
        }
}

- (IBAction)cancelAction:(UIBarButtonItem *)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
