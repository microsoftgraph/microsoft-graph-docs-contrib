---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EventCollectionPage events = graphClient.me().events()
	.buildRequest()
	.orderBy("createdDateTime")
	.skip(20)
	.get();

```