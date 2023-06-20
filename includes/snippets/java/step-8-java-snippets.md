---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Subscription subscription = new Subscription();
subscription.expirationDateTime = OffsetDateTimeSerializer.deserialize("2023-01-12T18:23:45.9356913Z");

graphClient.subscriptions("88aa8a88-88a8-88a8-8888-88a8aa88a88a")
	.buildRequest()
	.patch(subscription);

```