---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var assignmentRequests = await graphClient.IdentityGovernance.EntitlementManagement.AssignmentRequests
	.Request()
	.GetAsync();

```