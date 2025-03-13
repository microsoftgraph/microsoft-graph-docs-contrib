---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

IdentityUserFlowAttributeAssignment identityUserFlowAttributeAssignment = new IdentityUserFlowAttributeAssignment();
identityUserFlowAttributeAssignment.setIsOptional(false);
identityUserFlowAttributeAssignment.setRequiresVerification(false);
identityUserFlowAttributeAssignment.setUserInputType(IdentityUserFlowAttributeInputType.TextBox);
identityUserFlowAttributeAssignment.setDisplayName("Shoe size");
LinkedList<UserAttributeValuesItem> userAttributeValues = new LinkedList<UserAttributeValuesItem>();
identityUserFlowAttributeAssignment.setUserAttributeValues(userAttributeValues);
IdentityUserFlowAttribute userAttribute = new IdentityUserFlowAttribute();
userAttribute.setId("extension_guid_shoeSize");
identityUserFlowAttributeAssignment.setUserAttribute(userAttribute);
IdentityUserFlowAttributeAssignment result = graphClient.identity().b2cUserFlows().byB2cIdentityUserFlowId("{b2cIdentityUserFlow-id}").userAttributeAssignments().post(identityUserFlowAttributeAssignment);


```