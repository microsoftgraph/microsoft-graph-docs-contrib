---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var subjectRightsRequests = await graphClient.Privacy.SubjectRightsRequests
	.Request()
	.GetAsync();

```