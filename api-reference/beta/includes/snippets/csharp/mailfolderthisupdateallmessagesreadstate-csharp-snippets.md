---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Me.MailFolders.Item.UpdateAllMessagesReadState;

var requestBody = new UpdateAllMessagesReadStatePostRequestBody
{
	IsRead = true,
	SuppressReadReceipts = true,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Me.MailFolders["{mailFolder-id}"].UpdateAllMessagesReadState.PostAsync(requestBody);


```