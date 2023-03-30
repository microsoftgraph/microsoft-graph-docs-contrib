---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new OpenShiftChangeRequest
{
	SenderMessage = "Can I take this shift?",
	OpenShiftId = "577b75d2-a927-48c0-a5d1-dc984894e7b8",
};
var result = await graphClient.Teams["{team-id}"].Schedule.OpenShiftChangeRequests.PostAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("Authorization", "Bearer {token}");
});


```