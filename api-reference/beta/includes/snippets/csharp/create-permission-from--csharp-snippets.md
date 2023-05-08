---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Permission
{
	Roles = new List<string>
	{
		"write",
	},
	GrantedToIdentities = new List<IdentitySet>
	{
		new IdentitySet
		{
			Application = new Identity
			{
				Id = "89ea5c94-7736-4e25-95ad-3fa95f62b66e",
				DisplayName = "Contoso Time Manager App",
			},
		},
	},
};
var result = await graphClient.Sites["{site-id}"].Permissions.PostAsync(requestBody);


```