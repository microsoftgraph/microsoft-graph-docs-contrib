---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.DirectoryObjects.ValidateProperties;

var requestBody = new ValidatePropertiesPostRequestBody
{
	EntityType = "Group",
	DisplayName = "test",
	MailNickname = "test",
	OnBehalfOfUserId = Guid.Parse("onBehalfOfUserId-value"),
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DirectoryObjects.ValidateProperties.PostAsync(requestBody);


```