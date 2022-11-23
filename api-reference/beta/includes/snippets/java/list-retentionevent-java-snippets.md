---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RetentionEventCollectionPage retentionEvents = graphClient.security().triggers().retentionEvents()
	.buildRequest()
	.get();

```