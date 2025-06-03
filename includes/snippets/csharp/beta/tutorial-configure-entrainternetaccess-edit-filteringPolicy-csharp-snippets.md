---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

using Microsoft.Graph.Beta;
using Microsoft.Graph.Beta.Models.Networkaccess;

var graphServiceClient = new GraphServiceClient(tokenRequestContext, scopes);

var requestBody = new FqdnFilteringRule
{
    Destinations = new List<Fqdn>
    {
        new Fqdn { Value = "bing.com" },
        new Fqdn { Value = "*.bing.com" },
        new Fqdn { Value = "bing.co.uk" }
    }
};

var result = await graphServiceClient.NetworkAccess.FilteringPolicies["cccccccc-2222-3333-4444-dddddddddddd"].PolicyRules["{policyRuleId}"].PatchAsync(requestBody);

```
