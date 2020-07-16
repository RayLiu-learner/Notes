<img src="/Users/liurui/Desktop/学习资料/大三下学期/Hadoop大数据/期末设计/src/image001.jpg" alt="image001" style="zoom:125%;" />

<center><b><font size=10>山东财经大学</font></b></center>

<center><b><font size=10>实验报告(设计)</font></b></center>

 

 

<center><b>实验题目：</b> 基于Hadoop的NBA获胜概率分析</center>

 

​                                                        **学   院**    <u>计算机科学与技术学院</u>     

​                                                        **专   业**     <u>计算机科学与技术</u>      

​                                                        **班   级**    <u>计算机科学与技术1701</u>    

​                                                        **学   号**     <u>20171847126</u>        

​                                                        **姓   名**      <u>刘瑞</u>           

 





<center>山东财经大学计算机科学与技术学院</center>

<center>二Ｏ二Ｏ年  06  月  20 日</center>



[TOC]



# 一、选题背景

- 选题目的

  - nba球赛的观赏性是篮球比赛观赏性很高的比赛，当然球赛的门票价格也是十分高昂的，选择自己喜欢的球队，预测胜率，可以提高你的观赛体验。
  - 有一些合法的竞猜游戏，可以和好友互动，依据大数据分析的胜率，可以提高你的成功率。

- hadoop优势

  - Hadoop是一个由Apache基金会所开发的[分布式系统](https://baike.baidu.com/item/分布式系统/4905336)基础架构。用户可以在不了解分布式底层细节的情况下，开发分布式程序。充分利用集群的威力进行高速运算和存储。Hadoop实现了一个[分布式文件系统](https://baike.baidu.com/item/分布式文件系统/1250388)（Hadoop Distributed File System），简称HDFS。HDFS有高[容错性](https://baike.baidu.com/item/容错性/9131391)的特点，并且设计用来部署在低廉的（low-cost）硬件上；而且它提供高吞吐量（high throughput）来访问[应用程序](https://baike.baidu.com/item/应用程序/5985445)的数据，适合那些有着超大数据集（large data set）的应用程序。HDFS放宽了（relax）POSIX的要求，可以以流的形式访问（streaming access）文件系统中的数据。Hadoop的框架最核心的设计就是：HDFS和MapReduce。HDFS为海量的数据提供了存储，而MapReduce则为海量的数据提供了计算

  - Hadoop是一个能够对大量数据进行[分布式处理](https://baike.baidu.com/item/分布式处理)的[软件](https://baike.baidu.com/item/软件)框架。 Hadoop 以一种可靠、高效、可伸缩的方式进行数据处理 [3] 。

    Hadoop 是可靠的，因为它假设计算元素和存储会失败，因此它维护多个工作数据副本，确保能够针对失败的节点重新分布处理 [3] 。

    Hadoop 是高效的，因为它以并行的方式工作，通过[并行处理](https://baike.baidu.com/item/并行处理)加快处理速度 [3] 。

    Hadoop 还是可伸缩的，能够处理 [PB](https://baike.baidu.com/item/PB/399855) 级数据 [3] 。

    此外，Hadoop 依赖于社区服务，因此它的成本比较低，任何人都可以使用 [3] 。

    Hadoop是一个能够让用户轻松架构和使用的[分布式计算](https://baike.baidu.com/item/分布式计算/85448)平台。用户可以轻松地在Hadoop上开发和运行处理海量数据的[应用程序](https://baike.baidu.com/item/应用程序)。它主要有以下几个优点 [4] ：

    **1.高可靠性**。Hadoop按位存储和处理数据的能力值得人们信赖 [4] 。

    **2.高扩展性**。Hadoop是在可用的计算机集簇间分配数据并完成计算任务的，这些集簇可以方便地扩展到数以千计的节点中[4] 。

    **3.高效性**。Hadoop能够在节点之间动态地移动数据，并保证各个节点的[动态平衡](https://baike.baidu.com/item/动态平衡)，因此处理速度非常快 [4] 。

    **4.高容错性**。Hadoop能够自动保存数据的多个副本，并且能够自动将失败的任务重新分配 [4] 。

    **5.低成本**。与一体机、商用数据仓库以及QlikView、Yonghong Z-Suite等数据集市相比，hadoop是开源的，项目的软件成本因此会大大降低 [4] 。

    Hadoop带有用[Java](https://baike.baidu.com/item/Java)语言编写的框架，因此运行在 Linux 生产平台上是非常理想的。Hadoop 上的[应用程序](https://baike.baidu.com/item/应用程序)也可以使用其他语言编写，比如 C++ [4] 。

    **hadoop大数据处理的意义**

    Hadoop得以在大数据处理应用中广泛应用得益于其自身在数据提取、变形和加载(ETL)方面上的天然优势。Hadoop的分布式架构，将大数据处理引擎尽可能的靠近存储，对例如像ETL这样的批处理操作相对合适，因为类似这样操作的批处理结果可以直接走向存储。Hadoop的MapReduce功能实现了将单个任务打碎，并将碎片任务(Map)发送到多个节点上，之后再以单个数据集的形式加载(Reduce)到数据仓库里 。

# 二、任务目标

1. 将CSV文件上传到HDFS

2. 对CSV文件进行预处理生成无标题文本文件

3. 把HDFS中的文本文件导入到数据仓库Hive中

4. 在Hive中查看并分析数据

5. 对结果进行可视化展示

# 三、任务过程

## 1.将CSV文件上传到HDFS

1. 启动hdfs

   ```shell
   start-all.sh
   ```

2. 查看下hdfs是否正常启动

   ``` shell
   jps
   ```

   ![Jietu20200621-103545@2x](/Users/liurui/Desktop/学习资料/大三下学期/Hadoop大数据/期末设计/src/Jietu20200621-103545@2x.jpg)

3. 在hdfs下创建新的目录命名为finalexam

   ```shell
   hdfs dfs -mkdir /user/liurui/finalexam
   ```

4. 上传CSV文件到HDFS的finalexam文件夹中

   ```shell
   hdfs dfs -put /home/liurui/桌面/nba-winprobs/nba.tsv /user/liurui/finalexam
   ```

   ![](/Users/liurui/Desktop/学习资料/大三下学期/Hadoop大数据/期末设计/src/Jietu20200621-104539@2x.jpg)

5. 查看一下hdfs中tsv文件的前五行

   ```shell
   hdfs dfs -cat /user/liurui/finalexam/nba.tsv |head -10
   ```

   ![Jietu20200621-104831@2x](/Users/liurui/Desktop/学习资料/大三下学期/Hadoop大数据/期末设计/src/Jietu20200621-104831@2x.jpg)



## 2.对csv文件进行预处理生成无标题文本文件

1. 删除文件第一行记录，即字段名称

   ```shell
   sed -i '1d' nba.tsv
   ```

   ![Jietu20200621-110432@2x](/Users/liurui/Desktop/学习资料/大三下学期/Hadoop大数据/期末设计/src/Jietu20200621-110432@2x.jpg)

2. 对字段进行预处理

   1. 给每个球队加上一个id

   2. 计算出球队获胜的概率（取48个概率的平均数）

   3. 输出一个txt文件

      ```shell
      bash data-deal.sh nba.tsv nba.txt
      ```

      下面是shell脚本的代码

      ```shell
      #!/bin/bash
      #下面设置输入文件，把用户执行pre_deal.sh命令时提供的第一个参数作为输入文件名称
      infile=$1
      #下面设置输出文件，把用户执行pre_deal.sh命令时提供的第二个参数作为输出文件名称
      outfile=$2
      #注意！！最后的$infile > $outfile必须跟在}’这两个字符的后面
      awk -F "	+" 'BEGIN{
              id=0;
          }
          {   
      	    values=($2+$3+$4+$5+$6+$7+$8+$9+$10+$11+$12+$13+$14+$15+$16+$17+$18+$19+$20+$21+$22+$23+$24+$25+$26+$27+$28+$29+$30+$31+$32+$33+$34+$35+$36+$37+$38+$39+$40+$41+$42+$43+$44+$45+$46+$47+$48+$49+$50)/48;
              id=id+1;  
              print id"\t"$1"\t"values
          }' $infile > $outfile
      ```

   4. ![Jietu20200621-170830@2x](/Users/liurui/Desktop/学习资料/大三下学期/Hadoop大数据/期末设计/src/Jietu20200621-170830@2x.jpg)

3. 将处理过的文件上传到hdfs中

   ```bash
   hdfs dfs -mkdir /user/liurui/finalexam/database
   hdfs dfs -put /home/liurui/桌面/nba-winprobs/nba.txt /user/liurui/finalexam/database
   ```



## 3.把HDFS中的文本文件导入到数据仓库Hive中

1. 启动mysql

2. 启动hive

3. hive中创建一个数据库finalexam

   ```hive
   create database finalexam;
   use finalexam;
   ```

4. 创建外部表

   ```hive
   CREATE EXTERNAL TABLE finalexam.nba(id INT,teamname STRING,shenglv DOUBLE) COMMENT 'FINAL!' ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE LOCATION '/user/liurui/finalexam/database';
   ```

5. 查询一下表中的数据

   ![image-20200621171019900](/Users/liurui/Library/Application Support/typora-user-images/image-20200621171019900.png)



## 4.在Hive中查看并分析数据

1. 操作Hive

   1. ```shell
      service mysql start
      start-all.sh
      jps
      hive
      ```

   2. ```hive
      use finalexam;
      show tables;
      show create table nba
      ```

      ![Jietu20200621-171628@2x](/Users/liurui/Desktop/学习资料/大三下学期/Hadoop大数据/期末设计/src/Jietu20200621-171628@2x.jpg)

   3. ```hive
      desc nba; //查看表的简单结构
      ```

      ![Jietu20200621-171743@2x](/Users/liurui/Desktop/学习资料/大三下学期/Hadoop大数据/期末设计/src/Jietu20200621-171743@2x.jpg)

2. 简单查询分析

   ```hive
   select shenglv from nba limit 10;//查看前十支球队的胜率
   ```

   ![Jietu20200621-171936@2x](/Users/liurui/Desktop/学习资料/大三下学期/Hadoop大数据/期末设计/src/Jietu20200621-171936@2x.jpg)

3. 查询条数统计分析

   用聚合函数count()计算出表内有多少条行数据

   ```
   select count(*) from nba;
   ```

   ![Jietu20200621-172331@2x](/Users/liurui/Desktop/学习资料/大三下学期/Hadoop大数据/期末设计/src/Jietu20200621-172331@2x.jpg)

   可以看出表内有30行信息 也就是有30个球队

4. 关键字条件查询分析

   1. 以关键字的存在区间为条件的查询

      ```hive
      select count(*) from nba where shenglv>'0.4' and shenglv<'0.5';
      ```

      查询胜率是0.4到0.5之间的球队个数

      ![Jietu20200621-173051@2x](/Users/liurui/Desktop/学习资料/大三下学期/Hadoop大数据/期末设计/src/Jietu20200621-173051@2x.jpg)

   2. 查询胜率是0.4到0.5之间的球队

      ```hive
      select teamname from nba where shenglv>'0.4' and shenglv<'0.5';
      ```

      ![Jietu20200621-173213@2x](/Users/liurui/Desktop/学习资料/大三下学期/Hadoop大数据/期末设计/src/Jietu20200621-173213@2x.jpg)



## 5.对结果进行可视化展示

1. Hive预操作

   1.创建临时表nba_action

   ```hive
   create table finalexam.nba_action(id INT,teamname STRING, shenglv DOUBLE) COMMENT 'FINAL! ' ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
   ```

   2.将nba中的数据插入到nba_action中

   ```hive
   INSERT OVERWRITE TABLE finalexam.nba_action select * from finalexam.nba;
   ```

2. 使用Sqoop将数据从Hive导入MySQL

   1. 在mysql中创建名为finalexam的database

      ```mysql
      create database finalexam;
      use finalexam;
      ```

   2. 创建表nba_action

      ```mysql
      CREATE TABLE `finalexam`.`nba_action` (`id` varchar(50),`teamname` varchar(50),`shenglv` varchar(50)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
      ```

   3. 导入数据（在shell中）

      ```shell
      cd /usr/local/sqoop
      ./bin/sqoop export --connect jdbc:mysql://localhost:3306/finalexam --username root --password liurui --table nba_action --export-dir '/usr/local/hive/warehouse/finalexam.db/nba_action' --fields-terminated-by '\t';
      ```

      ![Jietu20200621-180901@2x](/Users/liurui/Desktop/学习资料/大三下学期/Hadoop大数据/期末设计/src/Jietu20200621-180901@2x.jpg)

   4. 查看Mysql中nba_action的数据

      ![Jietu20200621-181043@2x](/Users/liurui/Desktop/学习资料/大三下学期/Hadoop大数据/期末设计/src/Jietu20200621-181043@2x.jpg)

3. 分析

   1. ```R
      #在R的终端进行数据库连接
      library(RMySQL)
      conn <- dbConnect(MySQL(),dbname='finalexam',username='root',password='liurui',host="127.0.0.1",port=3306)
      nba_action <- dbGetQuery(conn,'select * from nba_action')
      ```

   2. 分析球队胜率

      ```R
      summary(as.numeric(nba_action$shenglv))
      ```

      ![Jietu20200621-203301@2x](/Users/liurui/Desktop/学习资料/大三下学期/Hadoop大数据/期末设计/src/Jietu20200621-203301@2x.jpg)

   3. 排序分析

      ```R
      nba_action[order(as.numeric(nba_action$shenglv), decreasing= T), ]
      ```

      ![Jietu20200621-212336@2x](/Users/liurui/Desktop/学习资料/大三下学期/Hadoop大数据/期末设计/src/Jietu20200621-212336@2x.jpg)

   4. 柱状图表示

      ```R
      library(ggplot2)
      ggplot(nba_action,aes(as.numeric(shenglv)))+geom_histogram()
      ```

      ![Jietu20200621-205654@2x](/Users/liurui/Desktop/学习资料/大三下学期/Hadoop大数据/期末设计/src/Jietu20200621-205654@2x.jpg)

      ```R
      library(ggplot2)
      ggplot(nba_action,aes(as.numeric(shenglv),col=factor(teamname)))+geom_histogram()
      ```

      ![Jietu20200621-205724@2x](/Users/liurui/Desktop/学习资料/大三下学期/Hadoop大数据/期末设计/src/Jietu20200621-205724@2x.jpg)



# 四、总结与反思

1. 编写shell程序用awk的时候，要注意用正确的分隔符。
2. 要注意R和hive时候起，启没启动mysql。
3. 可以用jps查看hadoop的运行情况。
4. R语言版本的不同可能会造成依赖包的不能兼容。