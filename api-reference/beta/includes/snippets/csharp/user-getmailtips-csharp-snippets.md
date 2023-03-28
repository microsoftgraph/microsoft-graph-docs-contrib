---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Me.GetMailTips.GetMailTipsPostRequestBody
{
	EmailAddresses = new List<string>
	{
		"danas@contoso.onmicrosoft.com",
		"fannyd@contoso.onmicrosoft.com",
	},
	MailTipsOptions = MailTipsType.AutomaticReplies | MailTipsType.MailboxFullStatus,
};
var result = await graphClient.Me.GetMailTips.PostAsync(requestBody);


```