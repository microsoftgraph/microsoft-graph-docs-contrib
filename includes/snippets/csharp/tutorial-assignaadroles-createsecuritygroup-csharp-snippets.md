---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Group
{
	Description = "IT Helpdesk to support Contoso employees",
	DisplayName = "IT Helpdesk (User)",
	MailEnabled = false,
	MailNickname = "userHelpdesk",
	SecurityEnabled = true,
	IsAssignableToRole = true,
	AdditionalData = new Dictionary<string, object>
	{
		{
			"owners@odata.bind" , new List<string>
			{
				"https://graph.microsoft.com/v1.0/users/1ed8ac56-4827-4733-8f80-86adc2e67db5",
			}
		},
		{
			"members@odata.bind" , new List<string>
			{
				"https://graph.microsoft.com/v1.0/users/1ed8ac56-4827-4733-8f80-86adc2e67db5",
				"https://graph.microsoft.com/v1.0/users/7146daa8-1b4b-4a66-b2f7-cf593d03c8d2",
			}
		},
	},
};
var result = await graphClient.Groups.PostAsync(requestBody);


```