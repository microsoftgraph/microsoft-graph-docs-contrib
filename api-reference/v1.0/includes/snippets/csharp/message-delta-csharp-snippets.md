---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Me.MailFolders["mailFolder-id"].Messages.MicrosoftGraphDelta.GetAsync((requestConfiguration) =>
{
	requestConfiguration.Headers.Add("Prefer", "odata.maxpagesize=2");
});


```