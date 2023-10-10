---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TodoTaskListDeltaCollectionPage delta = graphClient.me().todo().lists()
	.delta()
	.buildRequest()
	.get();

```