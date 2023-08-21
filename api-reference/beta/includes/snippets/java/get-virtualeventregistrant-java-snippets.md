---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

VirtualEventRegistrant virtualEventRegistrant = graphClient.solutions().virtualEvents().webinars("{webinarId}").registration().registrants("{registrantId}")
	.buildRequest()
	.get();

```