---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var internalSponsors = await graphClient.IdentityGovernance.EntitlementManagement.Assignments["{accessPackageAssignment-id}"].Target.ConnectedOrganization.InternalSponsors
	.Request()
	.GetAsync();

```