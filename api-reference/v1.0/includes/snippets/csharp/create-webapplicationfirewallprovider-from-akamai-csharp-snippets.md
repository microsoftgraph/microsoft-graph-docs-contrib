---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new AkamaiWebApplicationFirewallProvider
{
	OdataType = "#microsoft.graph.akamaiWebApplicationFirewallProvider",
	DisplayName = "Akamai Provider Example",
	HostPrefix = "akab-exampleprefix",
	ClientSecret = "akamai_example_secret_123",
	ClientToken = "akamai_example_token_456",
	AccessToken = "akamai_example_token_789",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.RiskPrevention.WebApplicationFirewallProviders.PostAsync(requestBody);


```