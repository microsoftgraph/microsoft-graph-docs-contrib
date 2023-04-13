---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var application = new Application
{
	IdentifierUris = new List<String>()
	{
		"https://contosoiwaapp-contoso.msappproxy.net"
	},
	Web = new WebApplication
	{
		RedirectUris = new List<String>()
		{
			"https://contosoiwaapp-contoso.msappproxy.net"
		},
		HomePageUrl = "https://contosoiwaapp-contoso.msappproxy.net"
	}
};

await graphClient.Applications["{application-id}"]
	.Request()
	.UpdateAsync(application);

```