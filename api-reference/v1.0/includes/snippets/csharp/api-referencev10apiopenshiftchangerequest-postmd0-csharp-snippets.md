---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var openShiftChangeRequest = new OpenShiftChangeRequestObject
{
	SenderMessage = "Can I take this shift?",
	OpenShiftId = "577b75d2-a927-48c0-a5d1-dc984894e7b8"
};

await graphClient.Teams["{team-id}"].Schedule.OpenShiftChangeRequests
	.Request()
	.Header("Authorization","Bearer {token}")
	.AddAsync(openShiftChangeRequest);

```