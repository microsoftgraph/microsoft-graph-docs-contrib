---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserProcessingResultCollectionWithReferencesPage executionScope = graphClient.identitygovernance().lifecycleWorkflows().workflows("8696088c-1aef-4f65-afe9-acd55343e327").executionScope()
	.buildRequest()
	.get();

```