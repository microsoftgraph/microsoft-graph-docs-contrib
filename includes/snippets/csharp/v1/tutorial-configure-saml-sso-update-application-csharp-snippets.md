---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Application
{
	Web = new WebApplication
	{
		RedirectUris = new List<string>
		{
			"https://signin.aws.amazon.com/saml",
		},
	},
	IdentifierUris = new List<string>
	{
		"https://signin.aws.amazon.com/saml",
	},
};
var result = await graphClient.Applications["{application-id}"].PatchAsync(requestBody);


```