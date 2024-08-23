---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Users.Item.DeletePasswordSingleSignOnCredentials;

var requestBody = new DeletePasswordSingleSignOnCredentialsPostRequestBody
{
	Id = "314ac440-129f-4cb3-ad61-24ef4a7de1d9",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Users["{user-id}"].DeletePasswordSingleSignOnCredentials.PostAsync(requestBody);


```