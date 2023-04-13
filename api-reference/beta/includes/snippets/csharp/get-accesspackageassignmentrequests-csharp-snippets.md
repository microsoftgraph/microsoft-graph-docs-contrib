---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageAssignmentRequests.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Expand = new string []{ "requestor($expand=connectedOrganization)" };
	requestConfiguration.QueryParameters.Filter = "(requestState eq 'PendingApproval')";
});


```