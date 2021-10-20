---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String verifiedPublisherId = "1234567";

graphClient.applications("{id}")
	.setVerifiedPublisher(ApplicationSetVerifiedPublisherParameterSet
		.newBuilder()
		.withVerifiedPublisherId(verifiedPublisherId)
		.build())
	.buildRequest()
	.post();

```