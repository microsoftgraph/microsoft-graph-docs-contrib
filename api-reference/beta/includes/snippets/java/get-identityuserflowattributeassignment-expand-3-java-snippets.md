---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

IdentityUserFlowAttributeAssignment result = graphClient.identity().b2cUserFlows().byB2cIdentityUserFlowId("{b2cIdentityUserFlow-id}").userAttributeAssignments().byIdentityUserFlowAttributeAssignmentId("{identityUserFlowAttributeAssignment-id}").get(requestConfiguration -> {
	requestConfiguration.queryParameters.expand = new String []{"userAttribute"};
});


```