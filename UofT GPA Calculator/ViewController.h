//
//  ViewController.h
//  UofT GPA Calculator
//
//  Created by Haris on 2014-05-06.
//  Copyright (c) 2014 Haris Shoaib. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)slideSlider:(UISlider *)sender;
@property (weak, nonatomic) IBOutlet UIStepper *weight1Stepper;
@property (weak, nonatomic) IBOutlet UILabel *weight1Label;
- (IBAction)stepWeight1:(UIStepper *)sender;

@property (weak, nonatomic) IBOutlet UISlider *grade2Slider;
@property (weak, nonatomic) IBOutlet UILabel *grade2Label;
- (IBAction)slideGrade2:(UISlider *)sender;
@property (weak, nonatomic) IBOutlet UIStepper *weight2Stepper;
@property (weak, nonatomic) IBOutlet UILabel *weight2Label;
- (IBAction)stepWeight2:(UIStepper *)sender;

@property (weak, nonatomic) IBOutlet UISlider *grade3Slider;
@property (weak, nonatomic) IBOutlet UILabel *grade3Label;
- (IBAction)slideGrade3:(UISlider *)sender;
@property (weak, nonatomic) IBOutlet UIStepper *weight3Stepper;
@property (weak, nonatomic) IBOutlet UILabel *weight3Label;
- (IBAction)stepWeight3:(UIStepper *)sender;

@property (weak, nonatomic) IBOutlet UISlider *grade4Slider;
@property (weak, nonatomic) IBOutlet UILabel *grade4Label;
- (IBAction)slideGrade4:(UISlider *)sender;
@property (weak, nonatomic) IBOutlet UIStepper *weight4Stepper;
@property (weak, nonatomic) IBOutlet UILabel *weight4Label;
- (IBAction)stepWeight4:(UIStepper *)sender;

@property (weak, nonatomic) IBOutlet UISlider *grade5Slider;
@property (weak, nonatomic) IBOutlet UILabel *grade5Label;
- (IBAction)slideGrade5:(UISlider *)sender;
@property (weak, nonatomic) IBOutlet UIStepper *weight5Stepper;
@property (weak, nonatomic) IBOutlet UILabel *weight5Label;
- (IBAction)stepWeight5:(UIStepper *)sender;

- (IBAction)calculateGPA:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *GPALabel;

@end