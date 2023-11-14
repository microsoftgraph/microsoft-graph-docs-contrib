---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Applications.Item.SetVerifiedPublisher;

var requestBody = new SetVerifiedPublisherPostRequestBody
{
	VerifiedPublisherId = "1234567",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Applications["{application-id}"].SetVerifiedPublisher.PostAsync(requestBody);


```