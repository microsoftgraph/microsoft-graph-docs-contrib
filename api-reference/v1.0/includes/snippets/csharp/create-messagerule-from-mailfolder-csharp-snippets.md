---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

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
					Address = "AlexW@contoso.onmicrosoft.com",
				},
			},
		},
		StopProcessingRules = true,
	},
};
var result = await graphClient.Me.MailFolders["{mailFolder-id}"].MessageRules.PostAsync(requestBody);


```