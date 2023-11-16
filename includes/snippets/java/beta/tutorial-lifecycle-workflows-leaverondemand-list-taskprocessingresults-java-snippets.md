---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TaskProcessingResultCollectionPage taskProcessingResults = graphClient.identityGovernance().lifecycleWorkflows().workflows("368dfba3-2303-4e02-b258-87d742187e1b").userProcessingResults("bc5b9d36-55fb-4036-8551-582668a6b78e").taskProcessingResults()
	.buildRequest()
	.get();

```