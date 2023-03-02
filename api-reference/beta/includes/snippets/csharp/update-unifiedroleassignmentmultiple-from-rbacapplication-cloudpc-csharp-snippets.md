---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new UnifiedRoleAssignmentMultiple
{
	DisplayName = "NewName",
	Description = "A new roleAssignment",
};
var result = await graphClient.RoleManagement.CloudPC.RoleAssignments["{unifiedRoleAssignmentMultiple-id}"].PatchAsync(requestBody);


```