---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TaskCollectionPage tasks = graphClient.identityGovernance().lifecycleWorkflows().workflows("156ce798-1eb6-4e0a-8515-e79f54d04390").versions("2").tasks()
	.buildRequest()
	.get();

```