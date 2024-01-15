---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TaskDefinition taskDefinition = graphClient.identityGovernance().lifecycleWorkflows().taskDefinitions("1dfdfcc7-52fa-4c2e-bf3a-e3919cc12950")
	.buildRequest()
	.get();

```