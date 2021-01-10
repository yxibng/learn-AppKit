# NSAlert-Demo
a demo shows how to use NSAlert

参考：  
- [NSAlert](https://www.jianshu.com/p/3357d8353ba8)

注意事项： 

>执行run Modal 会block 主线程
>等alert 退出modal 状态之后，主线程恢复运行。
>modal 期间，抛给主线程的任务全被block住，等线程恢复之后才继续执行。
