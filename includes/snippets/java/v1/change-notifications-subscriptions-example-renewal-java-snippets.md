---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Subscription subscription = new Subscription();
subscription.expirationDateTime = OffsetDateTimeSerializer.deserialize("2016-03-22T11:00:00Z");

graphClient.subscriptions("{id}")
	.buildRequest()
	.patch(subscription);

```