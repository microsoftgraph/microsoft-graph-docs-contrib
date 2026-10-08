---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.identitygovernance.lifecycleworkflows.workflows.item.microsoftgraphidentitygovernancepreviewworkflow.PreviewWorkflowPostRequestBody previewWorkflowPostRequestBody = new com.microsoft.graph.beta.identitygovernance.lifecycleworkflows.workflows.item.microsoftgraphidentitygovernancepreviewworkflow.PreviewWorkflowPostRequestBody();
LinkedList<DirectoryObject> subjects = new LinkedList<DirectoryObject>();
User directoryObject = new User();
directoryObject.setOdataType("#microsoft.graph.user");
directoryObject.setId("b59552b8-fa7b-4f68-8496-0a529aace8c0");
subjects.add(directoryObject);
User directoryObject1 = new User();
directoryObject1.setOdataType("#microsoft.graph.user");
directoryObject1.setId("a1b2c3d4-e5f6-7890-abcd-ef1234567890");
subjects.add(directoryObject1);
previewWorkflowPostRequestBody.setSubjects(subjects);
graphClient.identityGovernance().lifecycleWorkflows().workflows().byWorkflowId("{workflow-id}").microsoftGraphIdentityGovernancePreviewWorkflow().post(previewWorkflowPostRequestBody);


```