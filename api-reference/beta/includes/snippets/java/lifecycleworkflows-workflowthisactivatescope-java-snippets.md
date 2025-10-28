---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.identitygovernance.lifecycleworkflows.workflows.item.microsoftgraphidentitygovernanceactivatewithscope.ActivateWithScopePostRequestBody activateWithScopePostRequestBody = new com.microsoft.graph.beta.identitygovernance.lifecycleworkflows.workflows.item.microsoftgraphidentitygovernanceactivatewithscope.ActivateWithScopePostRequestBody();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
LinkedList<Object> subjects = new LinkedList<Object>();
 property = new ();
property.setId("8cdf25a8-c9d2-423e-a03d-3f39f03c3e97");
subjects.add(property);
 property1 = new ();
property1.setId("ea09ac2e-77e3-4134-85f2-25ccf3c33387");
subjects.add(property1);
additionalData.put("subjects", subjects);
activateWithScopePostRequestBody.setAdditionalData(additionalData);
graphClient.identityGovernance().lifecycleWorkflows().workflows().byWorkflowId("{workflow-id}").microsoftGraphIdentityGovernanceActivateWithScope().post(activateWithScopePostRequestBody);


```