---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Security.EdiscoveryHoldPolicy
{
	Displayname = "My legalHold with sources",
	Description = "Created from Graph API",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"userSources@odata.bind" , new List<>
			{
				new 
				{
					OdataType = "microsoft.graph.security.userSource",
					Email = "SalesTeam@M365x809305.OnMicrosoft.com",
				},
			}
		},
		{
			"siteSources@odata.bind" , new List<>
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
var result = await graphClient.Security.Cases.EdiscoveryCases["{ediscoveryCase-id}"].LegalHolds.PostAsync(requestBody);


```