---
title: Latex数学公式入门
time: 2020-03-09 22:00:00
tags: Latex
---

[LaTeX](https://links.jianshu.com/go?to=https%3A%2F%2Fzh.wikipedia.org%2Fwiki%2FLaTeX)是一种基于[TeX](https://links.jianshu.com/go?to=https%3A%2F%2Fzh.wikipedia.org%2Fwiki%2FTeX)的文档排版系统,把大片排版的格式细节隐藏在若干样式之后，以内容的逻辑结构统帅纷繁的格式，遂成为现在最流行的科技写作——尤其是数学写作的工具之一.
在Markdown中插入数学公式的语法是 `$数学公式$` 和 `$$数学公式$$`.

<!-- more -->

参考：[参考出处](https://www.jianshu.com/p/e6d2368e451a)

## 行内公式

行内公式是可以让公式在文中与文字或其他东西混编，不独占一行.在数学模式下,符号会使用单独的字体,字母通常是倾斜的意大利体,数字和符号则是直立体.而且,数学符号之间的距离也与一般的水平模式不同:

| 示例        | 显示       |
| ----------- | ---------- |
| `$3x+5y=20` | $3x+5y=10$ |
| `3x+5y=10`  | 3x+5y=10   |

因此,在排版数学公式时,即使没有特殊符号的算式如1+1=2,或者简单的一个字母变量$x$,也要进入数学模式,使用`$1+1=2$`,`$x$`,而不是使用排版普通文字的方式

## 独立公式

独立公式单独占一行

示例：`$$c=2πr$$`

显示：$$c=2πr$$

## 多行公式

在独立公式的多行公式中，使用反斜杠`\\`来表示换行。

```latex
$$
2x+3y=10\\
x+12y=29
$$
```

显示：
$$
2x+3y=10\\
x+12y=29
$$

## 常用符号

| 符号       | 示例                                      | 显示                                    |
| ---------- | ----------------------------------------- | --------------------------------------- |
| 上下标     | `$S=a_{1}^2+a_{2}^3$`                     | $S=a_{1}^2+a_{2}^3$                     |
| 括号       | `$f(x,y)=100*\lbrace[(x+y)*3]-10\rbrace$` | $f(x,y)=100*\lbrace[(x+y)*3]-10\rbrace$ |
| 分数       | `$\cfrac{4}{3}$`                          | $\cfrac{4}{3}$                          |
| 开方       | `$\sqrt[10]{X-5} 与 \sqrt{x-5}$`          | $ \sqrt[10]{X-5}与\sqrt{x-5}$           |
| 加减       | `$\pm$`                                   | $\pm$                                   |
| 小于等于   | `$\leq$`                                  | $\leq$                                  |
| 大于等于   | `$\geq$`                                  | $\geq$                                  |
| 不等于     | `$\neq$`                                  | $\neq$                                  |
| 求和       | `$\sum$`                                  | $\sum$                                  |
| 求乘积     | `$\prod$`                                 | $\prod$                                 |
| 对数运算符 | `$\log$`                                  | $\log$                                  |
| 对数运算符 | `$\lg$`                                   | $\lg$                                   |
| 对数运算符 | `$\ln$`                                   | $\ln$                                   |
| 垂直       | `$\bot$`                                  | $\bot$                                  |
| 角         | `$\angle$`                                | $\angle$                                |
| Sin        | `$\sin$`                                  | $\sin$                                  |
| 度         | `$\circ$`                                 | $\circ$                                 |
| 60度       | `$60^{\circ$}$`                           | $60^{\circ}$                            |
| 圆周率     | `$\pi$`                                   | $\pi$                                   |

## 极限

示例：`$lim_{n\to\infty}f(x)$`

显示：$lim_{n\to\infty}f(x)$

示例：`$lim_{n\to 0^+}f(x)$`

显示：$lim_{n\to 0^+}f(x)$

示例：`$lim_{n\to\infty^+}f(x)$`

显示：$lim_{n\to\infty^+}f(x)$

## 微积分

| 代码           | 符号         |
| -------------- | ------------ |
| `$\prime$`     | $\prime$     |
| `$\int$`       | $\int$       |
| `$\iint$`      | $\iint$      |
| `$\mathrm{d}$` | $\mathrm{d}$ |

## 希腊字母

| 代码         | 符号       |
| ------------ | ---------- |
| `$\alpha$`   | $\alpha$   |
| `$\beta$`    | $\beta$    |
| `$\gamma$`   | $\gamma$   |
| `$\delta$`   | $\delta$   |
| `$\epsilon$` | $\epsilon$ |
| `$\zeta$`    | $\zeta$    |
| `$\eta$`     | $\eta$     |
| `$\theta$`   | $\theta$   |
| `$\mu$`      | $\mu$      |
| `$\omega$`   | $\omega$   |
| `$\Delta$`   | $\Delta$   |

