---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var openShiftChangeRequests = await graphClient.Teams["{id}"].Schedule.OpenShiftChangeRequests
	.Request()
	.GetAsync();

```