---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

IdentityUserFlowAttributeAssignment identityUserFlowAttributeAssignment = new IdentityUserFlowAttributeAssignment();
identityUserFlowAttributeAssignment.setUserInputType(IdentityUserFlowAttributeInputType.TextBox);
IdentityUserFlowAttributeAssignment result = graphClient.identity().b2cUserFlows().byB2cIdentityUserFlowId("{b2cIdentityUserFlow-id}").userAttributeAssignments().byIdentityUserFlowAttributeAssignmentId("{identityUserFlowAttributeAssignment-id}").patch(identityUserFlowAttributeAssignment);


```