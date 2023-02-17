---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RetentionEvent retentionEvent = graphClient.security().triggers().retentionEvents("{retentionEventId}")
	.buildRequest()
	.get();

```