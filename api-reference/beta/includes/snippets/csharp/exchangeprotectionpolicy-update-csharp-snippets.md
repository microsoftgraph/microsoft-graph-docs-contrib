---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new ExchangeProtectionPolicy
{
	DisplayName = "Exchange Policy - Inadvertent data loss",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"mailboxProtectionUnits@delta" , new List<object>
			{
				new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"directoryObjectId", new UntypedString("1b014d8c-71fe-4d00-a01a-31850bc5b32c")
					},
				}),
				new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"directoryObjectId", new UntypedString("2b014d8c-71fe-4d00-a01a-31850bc5b32c")
					},
				}),
				new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"@removed", new UntypedObject(new Dictionary<string, UntypedNode>
						{
							{
								"reason", new UntypedString("changed")
							},
						})
					},
					{
						"id", new UntypedString("99954f18-c8ec-4b62-85bf-cdf3b70b140e")
					},
				}),
				new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"@removed", new UntypedObject(new Dictionary<string, UntypedNode>
						{
							{
								"reason", new UntypedString("changed")
							},
						})
					},
					{
						"id", new UntypedString("4267e382-71a9-4c07-bef7-bda97e09c0d2")
					},
				}),
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.BackupRestore.ExchangeProtectionPolicies["{exchangeProtectionPolicy-id}"].PatchAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("Authorization", "Bearer <Access-Token>");
});


```