---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new MailFolder
{
	DisplayName = "Clutter",
	IsHidden = true,
};
var result = await graphClient.Me.MailFolders.PostAsync(requestBody);


```