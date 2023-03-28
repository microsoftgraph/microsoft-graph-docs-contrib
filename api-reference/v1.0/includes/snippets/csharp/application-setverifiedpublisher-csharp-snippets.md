---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Applications.Item.SetVerifiedPublisher.SetVerifiedPublisherPostRequestBody
{
	VerifiedPublisherId = "1234567",
};
await graphClient.Applications["{application-id}"].SetVerifiedPublisher.PostAsync(requestBody);


```