---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RetentionEventTypeCollectionPage retentionEventTypes = graphClient.security().triggerTypes().retentionEventTypes()
	.buildRequest()
	.get();

```