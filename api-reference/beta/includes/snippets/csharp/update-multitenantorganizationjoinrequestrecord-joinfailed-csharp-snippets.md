---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new MultiTenantOrganizationJoinRequestRecord
{
	AddedByTenantId = "00000000-0000-0000-0000-000000000000",
};
var result = await graphClient.TenantRelationships.MultiTenantOrganization.JoinRequest.PatchAsync(requestBody);


```