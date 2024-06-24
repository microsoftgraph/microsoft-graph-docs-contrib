---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.identitygovernance.lifecycleworkflows.workflows.item.microsoftgraphidentitygovernanceactivate.ActivatePostRequestBody activatePostRequestBody = new com.microsoft.graph.identitygovernance.lifecycleworkflows.workflows.item.microsoftgraphidentitygovernanceactivate.ActivatePostRequestBody();
LinkedList<User> subjects = new LinkedList<User>();
User user = new User();
user.setId("8cdf25a8-c9d2-423e-a03d-3f39f03c3e97");
subjects.add(user);
User user1 = new User();
user1.setId("ea09ac2e-77e3-4134-85f2-25ccf3c33387");
subjects.add(user1);
activatePostRequestBody.setSubjects(subjects);
graphClient.identityGovernance().lifecycleWorkflows().workflows().byWorkflowId("{workflow-id}").microsoftGraphIdentityGovernanceActivate().post(activatePostRequestBody);


```