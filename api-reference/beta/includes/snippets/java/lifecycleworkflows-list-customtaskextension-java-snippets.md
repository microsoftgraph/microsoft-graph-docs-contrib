---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CustomTaskExtensionCollectionPage customTaskExtensions = graphClient.identityGovernance().lifecycleWorkflows().customTaskExtensions()
	.buildRequest()
	.get();

```