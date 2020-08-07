# 简介
这是一款使用Ethereum Whisper作为服务器，前端使用Vue开发的，匿名、加密的聊天软件

# 服务器部署
在本地启动geth私链，开启shh服务，privnet目录下存放了启动脚本
```
cd privnet;
./net.sh
```

# web应用部署
- 安装依赖
```
yarn install
```
- 启动前端服务
```
yarn run serve
```

# 操作简介
- 浏览器访问: localhost:8080
- 初次打开，会跳转至注册账号页面
- 填写名称，选择头像，进入聊天界面

![signup](https://github.com/stephenwu2020/whisper-chat/blob/master/tutorial/signup.png)
- 默认有3个群聊频道

![groups](https://github.com/stephenwu2020/whisper-chat/blob/master/tutorial/group.png)
- 在另一个浏览器新建一个账号

![other](https://github.com/stephenwu2020/whisper-chat/blob/master/tutorial/u2.png)
- 私聊需要添加对方的地址，填写昵称

![priv](https://github.com/stephenwu2020/whisper-chat/blob/master/tutorial/privchat.png)

![priv2](https://github.com/stephenwu2020/whisper-chat/blob/master/tutorial/privchat2.png)
- 清理账号信息，点击右上角的重置