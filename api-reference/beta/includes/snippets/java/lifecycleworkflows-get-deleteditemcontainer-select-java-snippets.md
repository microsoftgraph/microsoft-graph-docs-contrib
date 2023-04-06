---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Workflow workflow = graphClient.identityGovernance().lifecycleWorkflows().deletedItems().workflows("952b23c5-cc25-48c9-8848-95da4dd9dc6d")
	.buildRequest()
	.select("id,category,displayName,description,version,executionConditions")
	.get();

```