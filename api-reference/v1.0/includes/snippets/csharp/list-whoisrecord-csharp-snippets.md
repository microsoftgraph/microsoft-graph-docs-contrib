---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.ThreatIntelligence.WhoisRecords.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Search = "\"admin/address/state:WA";
	requestConfiguration.QueryParameters.Orderby = new string []{ "registrationDateTime desc"" };
});


```