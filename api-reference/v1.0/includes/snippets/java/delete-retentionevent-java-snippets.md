---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.security().triggers().retentionEvents("{retentionEventId}")
	.buildRequest()
	.delete();

```