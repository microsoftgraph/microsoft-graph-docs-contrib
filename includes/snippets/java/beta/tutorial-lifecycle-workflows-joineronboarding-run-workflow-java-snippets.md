---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.identitygovernance.lifecycleworkflows.workflows.item.microsoftgraphidentitygovernanceactivate.ActivatePostRequestBody activatePostRequestBody = new com.microsoft.graph.beta.identitygovernance.lifecycleworkflows.workflows.item.microsoftgraphidentitygovernanceactivate.ActivatePostRequestBody();
LinkedList<User> subjects = new LinkedList<User>();
User user = new User();
user.setId("8930f0c7-cdd7-4885-9260-3b4a8111de5c");
subjects.add(user);
activatePostRequestBody.setSubjects(subjects);
graphClient.identityGovernance().lifecycleWorkflows().workflows().byWorkflowId("{workflow-id}").microsoftGraphIdentityGovernanceActivate().post(activatePostRequestBody);


```