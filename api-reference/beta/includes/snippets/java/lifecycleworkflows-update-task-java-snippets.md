---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.identitygovernance.Task task = new com.microsoft.graph.beta.models.identitygovernance.Task();
task.setDescription("Add user to selected groups");
task.setDisplayName("Update marketing day 1 add users to Group set up");
com.microsoft.graph.models.identitygovernance.Task result = graphClient.identityGovernance().lifecycleWorkflows().workflows().byWorkflowId("{workflow-id}").tasks().byTaskId("{task-id}").patch(task);


```