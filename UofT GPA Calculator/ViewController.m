//
//  ViewController.m
//  UofT GPA Calculator
//
//  Created by Haris on 2014-05-06.
//  Copyright (c) 2014 Haris Shoaib. All rights reserved.
//

#import "ViewController.h"

int slideValue;
int grade2Value;
int grade3Value;
int grade4Value;
int grade5Value;
float weight1Value;
float weight2Value;
float weight3Value;
float weight4Value;
float weight5Value;
float GPA;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"UofT_Faculty_of_Law_logo2.png"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)slideSlider:(UISlider *)sender {
    slideValue = self.slider.value;
    self.label.text = [NSString stringWithFormat:@"%d%%", slideValue];
}
- (IBAction)stepWeight1:(UIStepper *)sender {
    weight1Value = self.weight1Stepper.value;
    self.weight1Label.text = [NSString stringWithFormat:@"%.1f", weight1Value];
}
- (IBAction)slideGrade2:(UISlider *)sender {
    grade2Value = self.grade2Slider.value;
    self.grade2Label.text = [NSString stringWithFormat:@"%d%%", grade2Value];
}
- (IBAction)stepWeight2:(UIStepper *)sender {
    weight2Value = self.weight2Stepper.value;
    self.weight2Label.text = [NSString stringWithFormat:@"%.1f", weight2Value];
}
- (IBAction)slideGrade3:(UISlider *)sender {
    grade3Value = self.grade3Slider.value;
    self.grade3Label.text = [NSString stringWithFormat:@"%d%%", grade3Value];
}
- (IBAction)stepWeight3:(UIStepper *)sender {
    weight3Value = self.weight3Stepper.value;
    self.weight3Label.text = [NSString stringWithFormat:@"%.1f", weight3Value];
}
- (IBAction)slideGrade4:(UISlider *)sender {
    grade4Value = self.grade4Slider.value;
    self.grade4Label.text = [NSString stringWithFormat:@"%d%%", grade4Value];
}
- (IBAction)stepWeight4:(UIStepper *)sender {
    weight4Value = self.weight4Stepper.value;
    self.weight4Label.text = [NSString stringWithFormat:@"%.1f", weight4Value];

}
- (IBAction)slideGrade5:(UISlider *)sender {
    grade5Value = self.grade5Slider.value;
    self.grade5Label.text = [NSString stringWithFormat:@"%d%%", grade5Value];
}
- (IBAction)stepWeight5:(UIStepper *)sender {
    weight5Value = self.weight5Stepper.value;
    self.weight5Label.text = [NSString stringWithFormat:@"%.1f", weight5Value];
}

float findGPV(float grade){
    float gradePointValue;
    
    if(0 <= grade && grade <= 49){
        gradePointValue = 0.0;
    }
    else if(50.0 <= grade && grade <= 52.0){
        gradePointValue = 0.7;
    }
    else if(53.0 <= grade && grade <= 56.0){
        gradePointValue = 1.0;
    }
    else if(57.0 <= grade && grade <= 59.0){
        gradePointValue = 1.3;
    }
    else if(60.0 <= grade && grade <= 62.0){
        gradePointValue = 1.7;
    }
    else if(63.0 <= grade && grade <= 66.0){
        gradePointValue = 2.0;
    }
    else if(67.0 <= grade && grade <= 69.0){
        gradePointValue = 2.3;
    }
    else if(70.0 <= grade && grade <= 72.0){
        gradePointValue = 2.7;
    }
    else if(73.0 <= grade && grade <= 76.0){
        gradePointValue = 3.0;
    }
    else if(77.0 <= grade && grade <= 79.0){
        gradePointValue = 3.3;
    }
    else if(80.0 <= grade && grade <= 84.0){
        gradePointValue = 3.7;
    }
    else if(85.0 <= grade && grade <= 89.0){
        gradePointValue = 4.0;
    }
    else if(90.0 <= grade && grade <= 100.0){
        gradePointValue = 4.0;
    }
    return gradePointValue;
}

float calculateTotalGrade1(){
    return (findGPV(slideValue) * weight1Value);
}
float calculateTotalGrade2(){
    return (findGPV(grade2Value) * weight2Value);
}
float calculateTotalGrade3(){
    return (findGPV(grade3Value) * weight3Value);
}
float calculateTotalGrade4(){
    return (findGPV(grade4Value) * weight4Value);
}
float calculateTotalGrade5(){
    return (findGPV(grade5Value) * weight5Value);
}
float calculateTotalCourseWeight(){
    return (weight1Value + weight2Value + weight3Value + weight4Value + weight5Value);
}

- (IBAction)calculateGPA:(UIButton *)sender {
    self.GPALabel.text = [NSString stringWithFormat:@"%.2f", (calculateTotalGrade1() + calculateTotalGrade2() + calculateTotalGrade3() + calculateTotalGrade4() + calculateTotalGrade5()) / calculateTotalCourseWeight()];
}

@end
