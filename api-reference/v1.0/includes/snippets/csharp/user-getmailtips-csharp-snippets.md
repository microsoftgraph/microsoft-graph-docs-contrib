---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Me.MicrosoftGraphGetMailTips.GetMailTipsPostRequestBody
{
	EmailAddresses = new List<string>
	{
		"danas@contoso.onmicrosoft.com",
		"fannyd@contoso.onmicrosoft.com",
	},
	MailTipsOptions = MailTipsType.AutomaticReplies | MailTipsType.MailboxFullStatus,
};
var result = await graphClient.Me.MicrosoftGraphGetMailTips.PostAsync(requestBody);


```