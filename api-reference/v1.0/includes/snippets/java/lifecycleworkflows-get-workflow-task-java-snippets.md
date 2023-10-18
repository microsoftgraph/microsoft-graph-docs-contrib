---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Task task = graphClient.identityGovernance().lifecycleWorkflows().workflows("156ce798-1eb6-4e0a-8515-e79f54d04390").tasks("fafa2189-cd62-4643-a825-06cab8817086")
	.buildRequest()
	.get();

```