---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var contentSharingSessions = await graphClient.Communications.Calls["{call-id}"].ContentSharingSessions
	.Request()
	.GetAsync();

```