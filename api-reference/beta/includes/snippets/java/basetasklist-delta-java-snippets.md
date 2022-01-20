---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BaseTaskListDeltaCollectionPage delta = graphClient.me().tasks().lists()
	.delta()
	.buildRequest()
	.get();

```