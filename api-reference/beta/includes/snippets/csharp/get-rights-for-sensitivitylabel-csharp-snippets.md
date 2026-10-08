---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.DataSecurityAndGovernance.SensitivityLabels["{sensitivityLabel-id}"].Rights.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.OwnerEmail = "bob@contoso.com";
	requestConfiguration.Headers.Add("Authorization", "Bearer {token}");
	requestConfiguration.Headers.Add("Client-Request-Id", "7c9b1b4c-5b5a-4e3e-9f1b-2d9b0b4a9a0a");
});


```