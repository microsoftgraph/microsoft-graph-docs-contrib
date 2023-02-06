---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrivilegedOperationEventCollectionPage privilegedOperationEvents = graphClient.privilegedOperationEvents()
	.buildRequest()
	.filter("(creationDateTime ge 2017-06-25T07:00:00Z) and (creationDateTime le 2017-07-25T17:30:17Z)")
	.orderBy("creationDateTime desc")
	.get();

```