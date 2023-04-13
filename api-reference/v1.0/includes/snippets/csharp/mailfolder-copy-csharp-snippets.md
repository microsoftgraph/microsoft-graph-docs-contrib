---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Me.MailFolders.Item.Copy.CopyPostRequestBody
{
	DestinationId = "destinationId-value",
};
var result = await graphClient.Me.MailFolders["{mailFolder-id}"].Copy.PostAsync(requestBody);


```