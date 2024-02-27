---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Groups["{group-id}"].AcceptedSenders.Ref.DeleteAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Id = "https://graph.microsoft.com/v1.0/users/{user-id}";
});


```