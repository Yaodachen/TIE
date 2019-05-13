# SDK开发BUG解决记录
1. opencv无法安装。卸载anaconda
2. cmake不显示找到了opencv
   解决方法：cmakelist里面修改opencv 2为 opencv
3. make中lib相关错误。
   解决方法：cmake文件中SDK_COMMON_LIB_DIR下面一行末尾加/libs/linux-x86_64
    同时，libs文件夹中，源文件软链接至5.11文件，5.11文件软链接至5.11.0文件
4. license无效：拷贝lic文件到build中
5. model缺失：拷贝model文件至build中，命名为models
