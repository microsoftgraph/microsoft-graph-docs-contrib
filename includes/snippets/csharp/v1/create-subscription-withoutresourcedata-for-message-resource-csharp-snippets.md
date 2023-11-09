---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new Subscription
{
	ChangeType = "created",
	NotificationUrl = "https://webhook.azurewebsites.net/api/send/myNotifyClient",
	Resource = "users/622eaaff-0683-4862-9de4-f2ec83c2bd98/messages",
	ExpirationDateTime = DateTimeOffset.Parse("2021-07-07T21:42:18.2257768+00:00"),
	ClientState = "secretClientState",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Subscriptions.PostAsync(requestBody);


```