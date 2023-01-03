---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkflowTemplateCollectionPage workflowTemplates = graphClient.identityGovernance().lifecycleWorkflows().workflowTemplates()
	.buildRequest()
	.filter("category eq 'leaver'")
	.get();

```