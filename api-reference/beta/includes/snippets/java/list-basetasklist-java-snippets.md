---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BaseTaskListCollectionPage lists = graphClient.me().tasks().lists()
	.buildRequest()
	.get();

```