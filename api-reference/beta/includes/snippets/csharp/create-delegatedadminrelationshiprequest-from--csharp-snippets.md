---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var delegatedAdminRelationshipRequest = new DelegatedAdminRelationshipRequestObject
{
	Action = DelegatedAdminRelationshipRequestAction.LockForApproval
};

await graphClient.TenantRelationships.DelegatedAdminRelationships["{delegatedAdminRelationship-id}"].Requests
	.Request()
	.AddAsync(delegatedAdminRelationshipRequest);

```