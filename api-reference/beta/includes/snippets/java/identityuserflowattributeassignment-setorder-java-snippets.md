---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.identity.b2cuserflows.item.userattributeassignments.setorder.SetOrderPostRequestBody setOrderPostRequestBody = new com.microsoft.graph.beta.identity.b2cuserflows.item.userattributeassignments.setorder.SetOrderPostRequestBody();
AssignmentOrder newAssignmentOrder = new AssignmentOrder();
LinkedList<String> order = new LinkedList<String>();
order.add("City");
order.add("extension_GUID_ShoeSize");
newAssignmentOrder.setOrder(order);
setOrderPostRequestBody.setNewAssignmentOrder(newAssignmentOrder);
graphClient.identity().b2cUserFlows().byB2cIdentityUserFlowId("{b2cIdentityUserFlow-id}").userAttributeAssignments().setOrder().post(setOrderPostRequestBody);


```