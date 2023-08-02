---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TaskProcessingResultCollectionPage taskProcessingResults = graphClient.identityGovernance().lifecycleWorkflows().workflows("ea71190c-075a-4ae7-9bca-34abf3b7b056").userProcessingResults("5772d894-3bcf-4d1c-9cfc-8c182331215b").taskProcessingResults()
	.buildRequest()
	.get();

```