---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRoleManagementPolicyCollectionResponse result = graphClient.policies().roleManagementPolicies().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "scopeId eq '60bba733-f09d-49b7-8445-32369aa066b3' and scopeType eq 'Group'";
	requestConfiguration.queryParameters.expand = new String []{"rules($select=id)"};
});


```