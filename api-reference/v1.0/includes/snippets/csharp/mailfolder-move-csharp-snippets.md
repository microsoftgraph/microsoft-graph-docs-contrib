---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Me.MailFolders.Item.MicrosoftGraphMove.MovePostRequestBody
{
	DestinationId = "destinationId-value",
};
var result = await graphClient.Me.MailFolders["mailFolder-id"].MicrosoftGraphMove.PostAsync(requestBody);


```