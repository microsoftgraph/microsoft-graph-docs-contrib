---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var homeRealmDiscoveryPolicy = new HomeRealmDiscoveryPolicy
{
	Definition = new List<String>()
	{
		"{\"HomeRealmDiscoveryPolicy\":\r\n     {\"AccelerateToFederatedDomain\":true,\r\n      \"PreferredDomain\":\"federated.example.edu\",\r\n      \"AlternateIdLogin\":{\"Enabled\":true}}}"
	},
	DisplayName = "displayName-value",
	IsOrganizationDefault = true
};

await graphClient.Policies.HomeRealmDiscoveryPolicies
	.Request()
	.AddAsync(homeRealmDiscoveryPolicy);

```