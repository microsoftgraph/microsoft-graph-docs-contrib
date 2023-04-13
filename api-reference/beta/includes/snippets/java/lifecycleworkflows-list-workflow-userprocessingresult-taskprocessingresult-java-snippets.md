---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TaskProcessingResultCollectionPage taskProcessingResults = graphClient.identityGovernance().lifecycleWorkflows().workflows("14879e66-9ea9-48d0-804d-8fea672d0341").userProcessingResults("78b83505-6967-4168-a7ea-4921c0543ce9").taskProcessingResults()
	.buildRequest()
	.get();

```