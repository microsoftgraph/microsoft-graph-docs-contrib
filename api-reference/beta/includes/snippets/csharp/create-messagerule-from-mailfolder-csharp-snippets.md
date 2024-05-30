---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new MessageRule
{
	DisplayName = "From partner",
	Sequence = 2,
	IsEnabled = true,
	Conditions = new MessageRulePredicates
	{
		SenderContains = new List<string>
		{
			"adele",
		},
	},
	Actions = new MessageRuleActions
	{
		ForwardTo = new List<Recipient>
		{
			new Recipient
			{
				EmailAddress = new EmailAddress
				{
					Name = "Alex Wilbur",
					Address = "AlexW@contoso.com",
				},
			},
		},
		StopProcessingRules = true,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.MailFolders["{mailFolder-id}"].MessageRules.PostAsync(requestBody);


```