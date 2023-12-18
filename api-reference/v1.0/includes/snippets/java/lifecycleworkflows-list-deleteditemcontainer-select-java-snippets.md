---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkflowCollectionPage workflows = graphClient.identityGovernance().lifecycleWorkflows().deletedItems().workflows()
	.buildRequest()
	.filter("category eq 'leaver'")
	.select("id,category,displayName,description,version")
	.get();

```