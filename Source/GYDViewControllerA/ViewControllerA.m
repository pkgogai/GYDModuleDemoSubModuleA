//
//  ViewControllerA.m
//  GYDModuleDemoInterface
//
//  Created by 宫亚东 on 2019/6/6.
//

#import "ViewControllerA.h"
#import "GYDModuleBInterface.h"

@interface ViewControllerA ()

@end

@implementation ViewControllerA
{
    UILabel *_label;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
    
    UIButton *button = ({
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(50, 100, 100, 40);
        button.backgroundColor = [UIColor greenColor];
        [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
        button;
    });
    [self.view addSubview:button];
    
    _label = ({
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(50, 150, 100, 40)];
        label.text = @"";
        label.textColor = [UIColor whiteColor];
        label;
    });
    [self.view addSubview:_label];
}

- (void)buttonAction:(UIButton *)button {
    _label.text = [NSString stringWithFormat:@"点击次数：%zd", [GYDModuleBInterface.delegate count]];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
