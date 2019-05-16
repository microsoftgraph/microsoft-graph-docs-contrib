---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var EmailAddresses = new List<String>()
{
	"danas@contoso.onmicrosoft.com",
	"fannyd@contoso.onmicrosoft.com",
};

var MailTipsOptions = "automaticReplies, mailboxFullStatus";

await graphClient.Me
	.GetMailTips(emailAddresses,mailTipsOptions)
	.Request()
	.PostAsync();

```