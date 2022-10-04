---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserProcessingResultCollectionPage userProcessingResults = graphClient.identityGovernance().lifecycleWorkflows().workflows("{workflowid}").userProcessingResults()
	.buildRequest()
	.get();

```