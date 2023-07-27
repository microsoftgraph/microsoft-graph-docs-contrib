---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TaskProcessingResultCollectionPage taskProcessingResults = graphClient.identityGovernance().lifecycleWorkflows().workflows("15239232-66ed-445b-8292-2f5bbb2eb833").userProcessingResults("40efc576-840f-47d0-ab95-5abca800f8a2").taskProcessingResults()
	.buildRequest()
	.get();

```