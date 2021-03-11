---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var message = "message-value";

await graphClient.Teams["{id}"].Schedule.OpenShiftChangeRequests["{openShiftChangeRequestId}"]
	.Decline(message)
	.Request()
	.PostAsync();

```