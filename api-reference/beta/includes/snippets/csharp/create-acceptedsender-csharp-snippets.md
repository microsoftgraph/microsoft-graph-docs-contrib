---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.ReferenceCreate
{
	OdataId = "https://graph.microsoft.com/beta/users/alexd@contoso.com",
};
await graphClient.Groups["{group-id}"].AcceptedSenders.Ref.PostAsync(requestBody);


```