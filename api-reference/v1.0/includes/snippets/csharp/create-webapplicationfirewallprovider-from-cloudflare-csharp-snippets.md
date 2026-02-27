---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new CloudFlareWebApplicationFirewallProvider
{
	OdataType = "#microsoft.graph.cloudFlareWebApplicationFirewallProvider",
	DisplayName = "Cloudflare Provider Example",
	ZoneId = "11111111111111111111111111111111",
	ApiToken = "cf_example_token_123",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.RiskPrevention.WebApplicationFirewallProviders.PostAsync(requestBody);


```