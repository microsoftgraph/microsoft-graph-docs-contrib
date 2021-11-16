---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var stream = await graphClient.Privacy.SubjectRightsRequests["{subjectRightsRequest-id}"]
	.GetFinalReport()
	.Request()
	.GetAsync();

```