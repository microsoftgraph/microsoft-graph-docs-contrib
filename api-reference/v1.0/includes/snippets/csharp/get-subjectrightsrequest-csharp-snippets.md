---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var subjectRightsRequest = await graphClient.Privacy.SubjectRightsRequests["{subjectRightsRequest-id}"]
	.Request()
	.GetAsync();

```