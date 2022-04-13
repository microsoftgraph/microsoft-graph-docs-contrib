---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SignInCollectionPage signIns = graphClient.auditLogs().signIns()
	.buildRequest()
	.filter("(signInEventTypes/any(t: t ne 'interactiveUser'))")
	.orderBy("createdDateTime DESC")
	.top(10)
	.get();

```