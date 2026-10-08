---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.identitygovernance.lifecycleworkflows.workflows.item.microsoftgraphidentitygovernanceactivatewithscope.ActivateWithScopePostRequestBody activateWithScopePostRequestBody = new com.microsoft.graph.identitygovernance.lifecycleworkflows.workflows.item.microsoftgraphidentitygovernanceactivatewithscope.ActivateWithScopePostRequestBody();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
LinkedList<Object> subjects = new LinkedList<Object>();
 property = new ();
property.setId("2ea4c363-4b85-4529-b2ec-53b64308f39f");
subjects.add(property);
 property1 = new ();
property1.setId("44fc5392-9485-4348-871e-2ea17cc0a1b8");
subjects.add(property1);
additionalData.put("subjects", subjects);
activateWithScopePostRequestBody.setAdditionalData(additionalData);
graphClient.identityGovernance().lifecycleWorkflows().workflows().byWorkflowId("{workflow-id}").microsoftGraphIdentityGovernanceActivateWithScope().post(activateWithScopePostRequestBody);


```