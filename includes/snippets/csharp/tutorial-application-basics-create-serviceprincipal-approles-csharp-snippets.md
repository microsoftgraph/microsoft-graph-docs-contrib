---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var servicePrincipal = new ServicePrincipal
{
	AppRoles = new List<AppRole>()
	{
		new AppRole
		{
			AllowedMemberTypes = new List<String>()
			{
				"User"
			},
			Description = "Survey.ReadWrite.All",
			DisplayName = "Survey.ReadWrite.All",
			Id = Guid.Parse("3ce57053-0ebf-42d8-bf7c-74161a450e4b"),
			IsEnabled = true,
			Value = "Survey.ReadWrite.All"
		},
		new AppRole
		{
			AllowedMemberTypes = new List<String>()
			{
				"User",
				"Application"
			},
			Description = "Survey.Read",
			DisplayName = "Survey.Read",
			Id = Guid.Parse("7a9ddfc4-cc8a-48ea-8275-8ecbffffd5a0"),
			IsEnabled = false,
			Origin = "Application",
			Value = "Survey.Read"
		}
	}
};

await graphClient.ServicePrincipals["{servicePrincipal-id}"]
	.Request()
	.UpdateAsync(servicePrincipal);

```