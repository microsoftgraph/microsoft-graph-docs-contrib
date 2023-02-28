---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.ApplicationTemplates.Item.MicrosoftGraphInstantiate.InstantiatePostRequestBody
{
	DisplayName = "Contoso IWA App",
};
var result = await graphClient.ApplicationTemplates["applicationTemplate-id"].MicrosoftGraphInstantiate.PostAsync(requestBody);


```