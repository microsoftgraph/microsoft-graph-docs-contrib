---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkflowCollectionPage workflows = graphClient.identityGovernance().lifecycleWorkflows().workflows()
	.buildRequest()
	.get();

```