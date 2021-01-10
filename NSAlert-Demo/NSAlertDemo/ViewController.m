//
//  ViewController.m
//  NSAlertDemo
//
//  Created by yxibng on 2020/12/27.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)runModal:(id)sender {
    
    NSAlert *alert = [[NSAlert alloc] init];
    alert.alertStyle = NSAlertStyleWarning;
    alert.icon = [NSImage imageNamed:@"icon.001"];
    alert.messageText = @"This is message text";
    alert.informativeText = @"This is informative text";
    [alert addButtonWithTitle:@"first button"];
    [alert addButtonWithTitle:@"second button"];
    [alert addButtonWithTitle:@"third button"];
    
    for (NSButton *button in alert.buttons) {
        [button setTarget:self];
        [button setAction:@selector(rz_runModalWithSender:)];
    }
    [alert runModal];
}

- (IBAction)displayAsSheet:(id)sender {
    NSAlert *alert = [[NSAlert alloc] init];
    alert.alertStyle = NSAlertStyleCritical;
    alert.icon = [NSImage imageNamed:@"icon.001"];
    alert.messageText = @"This is message text";
    alert.informativeText = @"This is informative text";
    [alert addButtonWithTitle:@"first button"];
    [alert addButtonWithTitle:@"second button"];
    [alert addButtonWithTitle:@"third button"];
    [alert beginSheetModalForWindow:self.view.window completionHandler:^(NSModalResponse returnCode) {
       
        if (returnCode == NSAlertFirstButtonReturn) {
            NSLog(@"%s, first clicked", __FUNCTION__);
        } else if (returnCode == NSAlertSecondButtonReturn) {
            NSLog(@"%s, second clicked", __FUNCTION__);
        } else {
            NSLog(@"%s, third clicked", __FUNCTION__);
        }
    }];
}

- (IBAction)runModalTestMainThread:(id)sender {
    
    NSAlert *alert = [[NSAlert alloc] init];
    alert.alertStyle = NSAlertStyleWarning;
    alert.icon = [NSImage imageNamed:@"icon.001"];
    alert.messageText = @"This is message text";
    alert.informativeText = @"This is informative text";
    [alert addButtonWithTitle:@"first button"];
    [alert addButtonWithTitle:@"second button"];
    [alert addButtonWithTitle:@"third button"];
    
    for (NSButton *button in alert.buttons) {
        [button setTarget:self];
        [button setAction:@selector(rz_runModalWithSender:)];
    }
    /*
     执行run Modal 会block 主线程
     等alert 退出modal 状态之后，主线程恢复运行。
     modal 期间，抛给主线程的任务全被block住，等线程恢复之后才继续执行。
     */
    [alert runModal];
    /*
     主线程恢复运行
     */
    NSLog(@"main thread resume");
}

- (void)rz_runModalWithSender:(NSButton *)sender {
    
    //参考 https://stackoverflow.com/questions/48688574/programmatically-dismiss-modal-dialog-in-macos
    NSLog(@"%s, title = %@",__FUNCTION__, sender.title);
    [[NSApplication sharedApplication] abortModal];
    
}


@end
