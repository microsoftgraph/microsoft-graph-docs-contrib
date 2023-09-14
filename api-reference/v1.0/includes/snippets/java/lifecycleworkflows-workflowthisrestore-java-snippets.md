---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.identityGovernance().lifecycleWorkflows().deletedItems().workflows("4c9c57b9-e1e9-4bed-a936-4fad9d8f5638")
	.restore()
	.buildRequest()
	.post();

```