---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new MailFolder
{
	DisplayName = "displayName-value",
};
var result = await graphClient.Me.MailFolders["{mailFolder-id}"].PatchAsync(requestBody);


```