﻿<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>精美js聊天窗口界面代码</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/reset.min.css">

    <link rel="stylesheet" href="css/style1.css">


</head>
<body>
    <div class="wrapper">
        <div class="container">
            <div class="left">
                <div class="top">
                    <input type="text" placeholder="搜索" />
                    <a href="javascript:;" class="search"></a>
                </div>
                <ul class="people">
                    <li class="person" data-chat="person1">
                        <img src="imgs/thomas.jpg" alt="" />
                        <span class="name">大力水手</span>
                        <span class="time">2:09 PM</span>
                        <span class="preview">我想知道...</span>
                    </li>
                    <li class="person" data-chat="person2">
                        <img src="imgs/dog.png" alt="" />
                        <span class="name">在东北玩泥巴</span>
                        <span class="time">1:44 PM</span>
                        <span class="preview">我以前被遗忘的感觉</span>
                    </li>
                    <li class="person" data-chat="person3">
                        <img src="imgs/louis-ck.jpeg" alt="" />
                        <span class="name">来爆一个傻佬</span>
                        <span class="time">2:09 PM</span>
                        <span class="preview">但我们可能需要一个新的地毯.</span>
                    </li>
                    <li class="person" data-chat="person4">
                        <img src="imgs/bo-jackson.jpg" alt="" />
                        <span class="name">呼呼呼</span>
                        <span class="time">2:09 PM</span>
                        <span class="preview">还好吧，情况不是很坏...</span>
                    </li>
                    <li class="person" data-chat="person5">
                        <img src="imgs/michael-jordan.jpg" alt="" />
                        <span class="name">L梦の鱼</span>
                        <span class="time">2:09 PM</span>
                        <span class="preview">
                            生活有度，人生添寿
                        </span>
                    </li>
                    <li class="person" data-chat="person6">
                        <img src="imgs/drake.jpg" alt="" />
                        <span class="name">Drake</span>
                        <span class="time">2:09 PM</span>
                        <span class="preview">真理惟一可靠的标准就是永远自相符合</span>
                    </li>
                </ul>
            </div>
            <div class="right">
                <div class="top"><span>To: <span class="name">在东北玩泥巴</span></span></div>
                <div class="chat" data-chat="person1">
                    <div class="conversation-start">
                        <span>今天, 6:48 AM</span>
                    </div>
                    <div class="bubble you">
                        你好,
                    </div>
                    <div class="bubble you">
                        是我啊.
                    </div>
                    <div class="bubble you">
                        我想知道...
                    </div>
                </div>
                <div class="chat" data-chat="person2">
                    <div class="conversation-start">
                        <span>今天, 5:38 PM</span>
                    </div>
                    <div class="bubble you">
                        在不在, 能不能听我一次?
                    </div>
                    <div class="bubble you">
                        我在加州
                    </div>
                    <div class="bubble me">
                        ... 关于我们的关系。

                    </div>
                    <div class="bubble me">
                        你是认真的
                        ?
                    </div>
                    <div class="bubble you">
                        当我们是年轻和自由
                        ...
                    </div>
                    <div class="bubble you">
                        我以前被遗忘的感觉

                    </div>
                </div>
                <div class="chat" data-chat="person3">
                    <div class="conversation-start">
                        <span>今天, 3:38 AM</span>
                    </div>
                    <div class="bubble you">
                        Hey哥们!
                    </div>
                    <div class="bubble you">
                        嗯……我在走廊上踩到了狗屎。

                    </div>
                    <div class="bubble me">
                        ... 什么？.
                    </div>
                    <div class="bubble me">
                        你是来搞笑的?
                    </div>
                    <div class="bubble you">
                        我想想...
                    </div>
                    <div class="bubble you">
                        简直是糟糕的一天...
                    </div>
                    <div class="bubble you">
                        但我们可能需要一个新的地毯。

                    </div>
                </div>
                <div class="chat" data-chat="person4">
                    <div class="conversation-start">
                        <span>昨天, 4:20 PM</span>
                    </div>
                    <div class="bubble you">
                        妹的
                    </div>
                    <div class="bubble you">

                        简直是糟糕的一天...
                    </div>
                    <div class="bubble me">
                        ... 什么？.

                    </div>
                    <div class="bubble me">

                        嗯……我在走廊上踩到了狗屎。
                    </div>
                    <div class="bubble you">

                        你是来搞笑的?
                    </div>

                </div>
                <div class="chat" data-chat="person5">
                    <div class="conversation-start">
                        <span>今天, 6:28 AM</span>
                    </div>
                    <div class="bubble you">
                        醒醒
                    </div>
                    <div class="bubble you">
                        醒醒
                    </div>
                    <div class="bubble you">
                        我需要三件东西：爱情友谊和图书。然而这三者之间何其相通！炽热的爱情可以充实图书的内容，图书又是人们最忠实的朋友
                    </div>
                </div>
                <div class="chat" data-chat="person6">
                    <div class="conversation-start">
                        <span>星期五, 1:27 PM</span>
                    </div>
                    <div class="bubble you">
                        你手机怎么了
                    </div>
                    <div class="bubble you">
                        你终于有一个智能手机:D

                    </div>
                    <div class="bubble me">
                        Drake?
                    </div>
                    <div class="bubble me">
                        你为什么不回答?

                    </div>
                    <div class="bubble you">
                        生活有度，人生添寿
                    </div>
                </div>
                <div class="write">
                    <a href="javascript:;" class="write-link attach"></a>
                    <input type="text" />
                    <a href="javascript:;" class="write-link smiley"></a>
                    <a href="javascript:;" class="write-link send"></a>
                </div>
            </div>
        </div>
    </div>


    <script src="js/index.js"></script>

    <!--这行代码可以去掉-->
    <a href="http://www.bootstrapmb.com" style="display:none">bootstrapmb</a>

</body>
</html>
