---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageAssignmentCollectionResponse result = graphClient.identityGovernance().entitlementManagement().accessPackageAssignments().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "accessPackageAssignmentPolicy/Id eq 'db440482-1210-4a60-9b55-3ac7a72f63ba'";
	requestConfiguration.queryParameters.expand = new String []{"target", "accessPackageAssignmentResourceRoles"};
});


```