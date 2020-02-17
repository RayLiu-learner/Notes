---
title: MacOS下利用Github+hexo搭建个人博客
date: 2020-02-17 00:09:53
tags:
---


# 
## 安装node  
nodejs的官网安装
>nodejs的官网`nodejs.org`
## 安装hexo
由于npm的源地址速度过慢，可更改地址为淘宝的源。

>切换淘宝源教程`https://www.jianshu.com/p/26640fbad18e`

以下步骤以终端命令为例
1. 先切换为root
```
sudo su
输入密码
```
2. 安装cnpm
```
npm install -g cnpm --registry=https://registry.npm.taobao.org
```

3. 可以检查下是否安装成功  
使用命令`cnpm -v` 若出现版本号则安装成功。
4. 用cnpm安装hexo博客框架
```linux
cnpm install -g hexo-cli
```

同样可以使用`hexo -v`来验证一下。  

5. 为了安全考虑，要重启终端或者退出root模式。

## 使用hexo正式搭建博客
1. 建立一个空文件夹，待会儿所有的文件都会在该文件夹下生成。  
*如果不小心出错了，不要慌，直接把这个文件夹删了,重新来不就好了吗🤓*
2. 使用hexo初始化一个博客  
进入指定目录后
```linux
hexo init
```
>不过这也太🐔慢了，有啥大神有好方法求分享。我开把游戏等着吧。
3. 下载完成之后启动博客
```
hexo s
```
//s是star开始的意思。

会自动生成一个helloworld的示例博客并且给出一个本地的4000端口的地址,可以访问看一下。用`ctrl+c`断开连接。

4. 可以新建一个文章尝试一下
```
hexo n "我的第一篇blog"
```
可以去显示给出的地址找到新建的文章来编辑。

5.hexo相关命令 
```
hexo n "名字" == hexo new "名字" #新建文章
hexo g == hexo generate #生成
hexo s == hexo server #启动服务预览
hexo d == hexo deploy #部署
hexo server #Hexo会监视文件变动并自动更新，无须重启服务器
hexo server -s #静态模式
hexo server -p 5000 #更改端口
hexo server -i 192.168.1.1 #自定义 IP
hexo clean #清除缓存，若是网页正常情况下可以忽略这条命令
```
>原谅我厚着脸皮从金正旭大佬博客上直接复制来的相关命令，毕竟编程的唯一能力就是复制粘贴嘛
>他的blog`http://jinzhnegxu.online`
## 推到Github操作
1. 先创建一个Repository  
这个仓库的名字格式必须是“`用户名.github.io`”创建成功后页面不要关闭，一会还要用。
2. 在你电脑的博客目录下装一个部署的插件
```
//先到你的目录

cnpm install --save hexo-deployer-git

//当然你没装cnpm的就用npm
```
3. 要配置`_config.yml`文件,该文件就在你的博客根目录下。
```
//我用vim配置这个文件，当然你可以全凭喜好使用不同文本编辑器编辑这个文件

vim _config.yml
```
找到最下面的`type`改成`type: git`
然后下面加一行`repo: 刚才创建仓库的地址`
在加一行`branch: master`

4. 部署到远端
```
hexo d
```
可能会有git的账户密码登陆问题，自行解决。

5. 推成功之后博客搭建完成
>可以通过“`用户名.github.io`”直接访问。

## hexo主题配置
1. 推荐`https://github.com/litten/hexo-theme-yilia`
2. 下载主题
```
git clone https://github.com/litten/hexo-theme-yilia.git themes/yilia
```
3. 配置到自己的博客，还是修改`_config.yml`文件  
将里面`theme`的值改成`yilia`就可以了。
//yilia是自己下载的主题的名字，在主题目录下有自己的文件夹。