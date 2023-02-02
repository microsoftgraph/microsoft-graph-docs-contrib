---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var messages = await graphClient.Me.Messages
	.Request()
	.Filter("Subject eq 'welcome' and importance eq 'normal'")
	.OrderBy("subject,importance,receivedDateTime desc")
	.GetAsync();

```