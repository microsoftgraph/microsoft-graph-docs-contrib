---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var application = new Application
{
	Web = new WebApplication
	{
		RedirectUris = new List<String>()
		{
			"https://signin.aws.amazon.com/saml"
		}
	},
	IdentifierUris = new List<String>()
	{
		"https://signin.aws.amazon.com/saml"
	}
};

await graphClient.Applications["{application-id}"]
	.Request()
	.UpdateAsync(application);

```