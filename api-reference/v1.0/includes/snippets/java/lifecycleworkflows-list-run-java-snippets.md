---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RunCollectionPage runs = graphClient.identityGovernance().lifecycleWorkflows().workflows("14879e66-9ea9-48d0-804d-8fea672d0341").runs()
	.buildRequest()
	.get();

```