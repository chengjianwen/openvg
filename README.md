# RPi下绘图库
基于https://github.com/ajstarks/openvg.git

由于原库只支持ASCII码显示，不支持unicode，所以做了修改。

## 编译要求

需要安装一种TTF字体，然后修改libshapes.c代码中FONTLIB宏定义的内容。

其它内容请参考原先代码的说明。
