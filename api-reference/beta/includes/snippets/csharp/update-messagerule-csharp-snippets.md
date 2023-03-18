---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new MessageRule
{
	DisplayName = "Important from partner",
	Actions = new MessageRuleActions
	{
		MarkImportance = Importance.High,
	},
};
var result = await graphClient.Me.MailFolders["{mailFolder-id}"].MessageRules["{messageRule-id}"].PatchAsync(requestBody);


```