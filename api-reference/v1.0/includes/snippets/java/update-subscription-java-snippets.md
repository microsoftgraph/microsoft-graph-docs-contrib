---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Subscription subscription = new Subscription();
OffsetDateTime expirationDateTime = OffsetDateTime.parse("2016-11-22T18:23:45.9356913Z");
subscription.setExpirationDateTime(expirationDateTime);
Subscription result = graphClient.subscriptions().bySubscriptionId("{subscription-id}").patch(subscription);


```