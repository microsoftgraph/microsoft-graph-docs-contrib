---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkflowTemplate workflowTemplate = graphClient.identityGovernance().lifecycleWorkflows().workflowTemplates("77179007-8114-41b5-922e-2e22109df41f")
	.buildRequest()
	.get();

```