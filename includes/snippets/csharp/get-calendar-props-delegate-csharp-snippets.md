---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var calendar = await graphClient.Users["{user-id}"].Calendars["{calendar-id}"]
	.Request()
	.GetAsync();

```