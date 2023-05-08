---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PrivilegedApproval
{
	ApprovalState = ApprovalState.Pending,
	ApproverReason = "approverReason-value",
};
var result = await graphClient.PrivilegedApproval["{privilegedApproval-id}"].PatchAsync(requestBody);


```