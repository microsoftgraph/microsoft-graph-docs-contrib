---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var group = new Group
{
	Description = "Feelgood Marketing Campaign with external partners and vendors.",
	DisplayName = "Feelgood Marketing Campaign",
	GroupTypes = new List<String>()
	{
		"Unified"
	},
	MailEnabled = true,
	MailNickname = "FeelGoodCampaign",
	SecurityEnabled = true,
	AdditionalData = new Dictionary<string, object>()
	{
		{"owners@odata.bind", "[\"https://graph.microsoft.com/v1.0/users/cdb555e3-b33e-4fd5-a427-17fadacbdfa7\"]"},
		{"members@odata.bind", "[\"https://graph.microsoft.com/v1.0/users/baf1b0a0-1f9a-4a56-9884-6a30824f8d20\"]"}
	}
};

await graphClient.Groups
	.Request()
	.AddAsync(group);

```