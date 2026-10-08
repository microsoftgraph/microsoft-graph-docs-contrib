---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Users["{user-id}"].SponsorOf.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "microsoft.graph.user/userType eq 'Guest'";
	requestConfiguration.Headers.Add("ConsistencyLevel", "eventual");
});


```