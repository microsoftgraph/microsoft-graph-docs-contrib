---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new UnifiedRoleEligibilityScheduleRequest
{
	Action = "adminRemove",
	RoleDefinitionId = "8424c6f0-a189-499e-bbd0-26c1753c96d4",
	DirectoryScopeId = "/",
	PrincipalId = "071cc716-8147-4397-a5ba-b2105951cc0b",
};
var result = await graphClient.RoleManagement.Directory.RoleEligibilityScheduleRequests.PostAsync(requestBody);


```