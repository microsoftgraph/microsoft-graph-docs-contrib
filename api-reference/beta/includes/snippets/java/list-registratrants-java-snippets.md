---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MeetingRegistrantBaseCollectionPage registrants = graphClient.me().onlineMeetings("MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ").registration().registrants()
	.buildRequest()
	.get();

```