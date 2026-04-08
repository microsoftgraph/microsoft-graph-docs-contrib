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
property.setId("abc12345-265a-4e8f-8d61-94a2dcd2d395_1_78799042-265a-4e8f-8d61-94a2dcd2d395_638927021459371237_0cdd8963-aaaa-4632-a1f2-aaaa7230aaaa");
subjects.add(property);
 property1 = new ();
property1.setId("abc12345-265a-4e8f-8d61-94a2dcd2d395_1_78799042-265a-4e8f-8d61-94a2dcd2d395_388131231459357126_aaaa8963-1c30-4632-aaaa-ac96723069cb");
subjects.add(property1);
additionalData.put("subjects", subjects);
activateWithScopePostRequestBody.setAdditionalData(additionalData);
graphClient.identityGovernance().lifecycleWorkflows().workflows().byWorkflowId("{workflow-id}").microsoftGraphIdentityGovernanceActivateWithScope().post(activateWithScopePostRequestBody);


```