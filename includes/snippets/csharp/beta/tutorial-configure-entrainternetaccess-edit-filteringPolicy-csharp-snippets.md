// C# sample: Edit a filtering policy to add a destination using PATCH
var graphClient = new GraphServiceClient(authProvider);

var fqdnFilteringRule = new FqdnFilteringRule
{
    Destinations = new List<Fqdn>
    {
        new Fqdn { Value = "bing.com" },
        new Fqdn { Value = "*.bing.com" },
        new Fqdn { Value = "bing.co.uk" }
    }
};

await graphClient.NetworkAccess.FilteringPolicies["cccccccc-2222-3333-4444-dddddddddddd"]
    .PolicyRules["<policyRuleId>"]
    .Request()
    .UpdateAsync(fqdnFilteringRule);
