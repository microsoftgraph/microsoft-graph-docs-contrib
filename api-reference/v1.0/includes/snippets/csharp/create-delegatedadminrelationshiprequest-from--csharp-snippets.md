---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new DelegatedAdminRelationshipRequest
{
	Action = DelegatedAdminRelationshipRequestAction.LockForApproval,
};
var result = await graphClient.TenantRelationships.DelegatedAdminRelationships["{delegatedAdminRelationship-id}"].Requests.PostAsync(requestBody);


```