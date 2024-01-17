---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Applications.Item.RemovePassword;

var requestBody = new RemovePasswordPostRequestBody
{
	KeyId = Guid.Parse("f0b0b335-1d71-4883-8f98-567911bfdca6"),
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Applications["{application-id}"].RemovePassword.PostAsync(requestBody);


```