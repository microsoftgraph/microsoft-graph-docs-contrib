---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessPackageAssignmentRequests = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageAssignmentRequests
	.Request()
	.Filter("(requestState eq 'PendingApproval')")
	.Expand("requestor($expand=connectedOrganization)")
	.GetAsync();

```