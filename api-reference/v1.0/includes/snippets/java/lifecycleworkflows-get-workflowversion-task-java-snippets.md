---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Task task = graphClient.identityGovernance().lifecycleWorkflows().workflows("156ce798-1eb6-4e0a-8515-e79f54d04390").versions("2").tasks("4d9d41d7-a8e1-4f2f-8c8c-a883bc02e6ee")
	.buildRequest()
	.get();

```