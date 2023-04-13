---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var application = new Application
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
		IsTranslateLinksInBodyEnabled = true
	}
};

await graphClient.Applications["{application-id}"]
	.Request()
	.UpdateAsync(application);

```