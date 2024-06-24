---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Admin.ServiceAnnouncement.Messages.MarkUnread;

var requestBody = new MarkUnreadPostRequestBody
{
	MessageIds = new List<string>
	{
		"MC172851",
		"MC167983",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Admin.ServiceAnnouncement.Messages.MarkUnread.PostAsMarkUnreadPostResponseAsync(requestBody);


```