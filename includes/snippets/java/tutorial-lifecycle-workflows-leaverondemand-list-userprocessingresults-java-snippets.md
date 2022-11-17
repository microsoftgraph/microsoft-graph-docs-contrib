---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserProcessingResultCollectionPage userProcessingResults = graphClient.identityGovernance().lifecycleWorkflows().workflows("368dfba3-2303-4e02-b258-87d742187e1b").userProcessingResults()
	.buildRequest()
	.get();

```