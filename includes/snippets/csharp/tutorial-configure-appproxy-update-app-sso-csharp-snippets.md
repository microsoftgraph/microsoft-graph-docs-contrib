---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var application = new Application
{
	OnPremisesPublishing = new OnPremisesPublishing
	{
		SingleSignOnSettings = new OnPremisesPublishingSingleSignOn
		{
			KerberosSignOnSettings = new KerberosSignOnSettings
			{
				KerberosServicePrincipalName = "HTTP/iwademo.contoso.com",
				KerberosSignOnMappingAttributeType = KerberosSignOnMappingAttributeType.UserPrincipalName
			},
			SingleSignOnMode = SingleSignOnMode.OnPremisesKerberos
		}
	}
};

await graphClient.Applications["{application-id}"]
	.Request()
	.UpdateAsync(application);

```