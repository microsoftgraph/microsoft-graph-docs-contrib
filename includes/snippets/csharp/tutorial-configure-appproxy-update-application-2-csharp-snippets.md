---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Application
{
	OnPremisesPublishing = new OnPremisesPublishing
	{
		ExternalAuthenticationType = ExternalAuthenticationType.AadPreAuthentication,
		InternalUrl = "https://contosoiwaapp.com",
		ExternalUrl = "https://contosoiwaapp-contoso.msappproxy.net",
		IsHttpOnlyCookieEnabled = true,
		IsOnPremPublishingEnabled = true,
		IsPersistentCookieEnabled = true,
		IsSecureCookieEnabled = true,
		IsStateSessionEnabled = true,
		IsTranslateHostHeaderEnabled = true,
		IsTranslateLinksInBodyEnabled = true,
	},
};
var result = await graphClient.Applications["{application-id}"].PatchAsync(requestBody);


```