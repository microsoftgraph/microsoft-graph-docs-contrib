---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TaskDefinitionCollectionPage taskDefinitions = graphClient.identityGovernance().lifecycleWorkflows().taskDefinitions()
	.buildRequest()
	.filter("category has 'joiner'")
	.get();

```