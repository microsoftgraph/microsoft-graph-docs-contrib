---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Content virtualAppointment = graphClient.me().onlineMeeting().mSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi().virtualAppointment()
	.buildRequest()
	.get();

```