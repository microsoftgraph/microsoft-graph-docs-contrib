---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var contentSharingSession = await graphClient.Communications.Calls["{call-id}"].ContentSharingSessions["{contentSharingSession-id}"]
	.Request()
	.GetAsync();

```