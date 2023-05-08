---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AppRoleAssignment
{
	PrincipalId = Guid.Parse("cde330e5-2150-4c11-9c5b-14bfdc948c79"),
	ResourceId = Guid.Parse("8e881353-1735-45af-af21-ee1344582a4d"),
	AppRoleId = Guid.Parse("00000000-0000-0000-0000-000000000000"),
};
var result = await graphClient.Users["{user-id}"].AppRoleAssignments.PostAsync(requestBody);


```