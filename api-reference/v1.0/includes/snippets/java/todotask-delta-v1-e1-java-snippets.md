---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TodoTaskDeltaCollectionPage delta = graphClient.me().todo().lists("gDbc8U7HGwADDZocJgAAAA==").tasks()
	.delta()
	.buildRequest()
	.get();

```