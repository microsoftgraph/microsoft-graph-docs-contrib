---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var commsOperation = await graphClient.Communications.Calls["{call-id}"].Operations["{commsOperation-id}"]
	.Request()
	.GetAsync();

```