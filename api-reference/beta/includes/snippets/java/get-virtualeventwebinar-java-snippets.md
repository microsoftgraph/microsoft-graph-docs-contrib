---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

VirtualEventWebinar virtualEventWebinar = graphClient.solutions().virtualEvents().webinars("{webinarId}")
	.buildRequest()
	.get();

```