---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.identityGovernance().lifecycleWorkflows().customTaskExtensions("2af4670b-47d3-460f-ad16-fc7d4c511d33")
	.buildRequest()
	.delete();

```