---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Application
{
	IdentifierUris = new List<string>
	{
		"https://contosoiwaapp-contoso.msappproxy.net",
	},
	Web = new WebApplication
	{
		RedirectUris = new List<string>
		{
			"https://contosoiwaapp-contoso.msappproxy.net",
		},
		HomePageUrl = "https://contosoiwaapp-contoso.msappproxy.net",
	},
};
var result = await graphClient.Applications["{application-id}"].PatchAsync(requestBody);


```