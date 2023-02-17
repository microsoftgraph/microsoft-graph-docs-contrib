---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.users("16664f75-11dc-4870-bec6-38c1aaa81431").onlineMeetings("MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ").registration().registrants("gWWckDBR6UOI8_yzWCzeNw,6pAAiSU1bkGqc8soJZw5Pg,3aMJxgQBxEufdo7_Qube_w,YgKy1Rtx-0SFjRbv-ww1ag,Cuzk8JP_iTTWqCOyVcalVA")
	.buildRequest()
	.delete();

```