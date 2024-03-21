---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Me.GetMailTips;
using Microsoft.Graph.Models;

var requestBody = new GetMailTipsPostRequestBody
{
	EmailAddresses = new List<string>
	{
		"danas@contoso.com",
		"fannyd@contoso.com",
	},
	MailTipsOptions = MailTipsType.AutomaticReplies | MailTipsType.MailboxFullStatus,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.GetMailTips.PostAsGetMailTipsPostResponseAsync(requestBody);


```