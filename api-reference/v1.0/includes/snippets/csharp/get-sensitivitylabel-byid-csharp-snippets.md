---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.DataSecurityAndGovernance.SensitivityLabels["{sensitivityLabel-id}"].GetAsync((requestConfiguration) =>
{
	requestConfiguration.Headers.Add("Authorization", "Bearer {token}");
	requestConfiguration.Headers.Add("Client-Request-Id", "a0b9c8d7-e6f5-a4b3-c2d1-e0f9a8b7c6d5");
});


```