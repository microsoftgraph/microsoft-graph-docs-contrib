---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserProcessingResultCollectionPage userProcessingResults = graphClient.identityGovernance().lifecycleWorkflows().workflows("ea71190c-075a-4ae7-9bca-34abf3b7b056").userProcessingResults()
	.buildRequest()
	.get();

```