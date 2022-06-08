---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var externalSponsors = await graphClient.IdentityGovernance.EntitlementManagement.Assignments["{accessPackageAssignment-id}"].Target.ConnectedOrganization.ExternalSponsors
	.Request()
	.GetAsync();

```