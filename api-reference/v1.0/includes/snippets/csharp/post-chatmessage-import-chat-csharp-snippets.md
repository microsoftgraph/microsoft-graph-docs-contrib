---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new ChatMessage
{
	CreatedDateTime = DateTimeOffset.Parse("2019-02-04T19:58:15.511Z"),
	From = new ChatMessageFromIdentitySet
	{
		User = new Identity
		{
			Id = "8ea0e38b-efb3-4757-924a-5f94061cf8c2",
			DisplayName = "Robin Kline",
			AdditionalData = new Dictionary<string, object>
			{
				{
					"userIdentityType" , "aadUser"
				},
			},
		},
	},
	Body = new ItemBody
	{
		ContentType = BodyType.Html,
		Content = "Hello World",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Chats["{chat-id}"].Messages.PostAsync(requestBody);


```