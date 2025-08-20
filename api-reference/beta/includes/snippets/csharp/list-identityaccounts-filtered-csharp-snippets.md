---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Identities.IdentityAccounts.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "onPremisesSecurityIdentifier eq 'S-1-5-21-989687458-3461180213-172365591-281652'";
});


```