---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Users.Item.FollowedSites.Item.FollowedSite
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"value" , new List<>
			{
				new 
				{
					Id = "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,712a596e-90a1-49e3-9b48-bfa80bee8740",
				},
				new 
				{
					Id = "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,0271110f-634f-4300-a841-3a8a2e851851",
				},
			}
		},
	},
};
await graphClient.Users["{user-id}"].FollowedSites["{site-id}"].PostAsync(requestBody);


```