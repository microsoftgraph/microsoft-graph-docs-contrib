---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.DirectoryObjects.ValidateProperties;

var requestBody = new ValidatePropertiesPostRequestBody
{
	EntityType = "Group",
	DisplayName = "Myprefix_test_mysuffix",
	MailNickname = "Myprefix_test_mysuffix",
	OnBehalfOfUserId = Guid.Parse("onBehalfOfUserId-value"),
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DirectoryObjects.ValidateProperties.PostAsync(requestBody);


```