---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Security;

var requestBody = new EdiscoveryHoldPolicy
{
	DisplayName = "My legalHold with sources",
	Description = "Created from Graph API",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"userSources@odata.bind" , new List<object>
			{
				new 
				{
					OdataType = "microsoft.graph.security.userSource",
					Email = "SalesTeam@contoso.com",
				},
			}
		},
		{
			"siteSources@odata.bind" , new List<object>
			{
				new 
				{
					OdataType = "microsoft.graph.security.siteSource",
					Site = new 
					{
						WebUrl = "https://m365x809305.sharepoint.com/sites/Design-topsecret",
					},
				},
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].LegalHolds.PostAsync(requestBody);


```