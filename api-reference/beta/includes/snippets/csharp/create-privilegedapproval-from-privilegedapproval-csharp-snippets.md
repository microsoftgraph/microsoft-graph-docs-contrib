---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PrivilegedApproval
{
	UserId = "userId-value",
	RoleId = "roleId-value",
	ApprovalType = "approvalType-value",
	ApprovalState = ApprovalState.Pending,
	ApprovalDuration = TimeSpan.Parse("datetime-value"),
};
var result = await graphClient.PrivilegedApproval.PostAsync(requestBody);


```