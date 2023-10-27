---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RetentionEventType retentionEventType = graphClient.security().triggerTypes().retentionEventTypes("{retentionEventTypeId}")
	.buildRequest()
	.get();

```