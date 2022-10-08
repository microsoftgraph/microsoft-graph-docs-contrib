---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.identityGovernance().lifecycleWorkflows().deletedItems().workflows("{workflowId}")
	.buildRequest()
	.delete();

```