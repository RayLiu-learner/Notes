# Github学习笔记
## 使用Git
### 1. Git基础
1. 目的：`通过git管理github托管项目代码。`
2. [下载Git](https://git-scm.com/downloads)·根据自己系统找到使用自己的版本下载。
    >Git官网因为某些原因😂，打开缓慢，建议有条件还是用科学上网的方式打开，可以节约点时间，手动狗头😊
3. 安装Git
    >因为我下载到99%的时候中断了好几次，心态都快崩了，我把mac的安装包存在github上吧，太🐔无奈摇头。     

    bash是命令行模式，GUI是图形模式  
4. 相关git概念
    - 工作区：添加、编辑、修改文件
    - 暂存区：暂存修改的文件，最后统一提交到Git仓库中
    - Git Repository：最终文件保存在仓库中，成为一个新的版本，并且对他人可见。
5. 相关命令
   - `git status`可以查看文件状态  
   - `git add filename`将文件从工作区添加到暂存区域  
   >例如`git add helloworld.c`就是将文件`helloworld`添加到**暂存区**  
   - `git commit -m "提交描述"`
### 2.Git管理远端仓库
1. 首次要配置git账户信息：
    - 用户名
        ```
        git config --global user.name '用户名'
        ```
    - 邮箱
        ```
        git config --global user.email '邮箱地址'
        ```
2. 相较于本地管理多出一个`git push`命令，用来上传到github
3. `git clone 仓库地址`来将github的仓库下载到本地。  
4. 最后通过`git push`同步到github
### 3. 相关操作步骤：
1. 先克隆项目到本地
    ```
    git clone 项目地址
    ```
2. 进入项目完成操作
3. 将操作好的文件存到暂存区
    ```
    git add filename
    ```
4. 将暂存区文件提交到仓库
    ```
    git commit -m "描述"
    ```
5. 同步到github
    ```
    git push
    ```
>可能会出现权限问题。   

可以通过修改config信息  
通过命令
`vim .git/config`修改`[remote "origin"]`下的`url = https://github.com/用户名/仓库`为`url = https://用户名:密码@github.com/用户名/仓库`