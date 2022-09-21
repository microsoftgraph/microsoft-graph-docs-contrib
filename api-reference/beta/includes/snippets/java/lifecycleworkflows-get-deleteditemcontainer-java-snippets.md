---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Workflow workflow = graphClient.identityGovernance().lifecycleWorkflows().deletedItems().workflows("4557805a-1af5-4c29-b271-2cd7fb5de9bf")
	.buildRequest()
	.get();

```