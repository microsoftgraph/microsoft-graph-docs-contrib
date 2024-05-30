---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageAssignmentRequestCollectionResponse result = graphClient.identityGovernance().entitlementManagement().accessPackageAssignmentRequests().get(requestConfiguration -> {
	requestConfiguration.queryParameters.expand = new String []{"requestor($expand=connectedOrganization)"};
	requestConfiguration.queryParameters.filter = "(requestState eq 'PendingApproval')";
});


```