---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ServicePrincipal
{
	AppRoles = new List<AppRole>
	{
		new AppRole
		{
			AllowedMemberTypes = new List<string>
			{
				"User",
			},
			DisplayName = "User",
			Id = Guid.Parse("8774f594-1d59-4279-b9d9-59ef09a23530"),
			IsEnabled = true,
			Description = "User",
			Value = null,
			Origin = "Application",
		},
		new AppRole
		{
			AllowedMemberTypes = new List<string>
			{
				"User",
			},
			DisplayName = "msiam_access",
			Id = Guid.Parse("e7f1a7f3-9eda-48e0-9963-bd67bf531afd"),
			IsEnabled = true,
			Description = "msiam_access",
			Value = null,
			Origin = "Application",
		},
		new AppRole
		{
			AllowedMemberTypes = new List<string>
			{
				"User",
			},
			Description = "Admin,WAAD",
			DisplayName = "Admin,WAAD",
			Id = Guid.Parse("3a84e31e-bffa-470f-b9e6-754a61e4dc63"),
			IsEnabled = true,
			Value = "arn:aws:iam::212743507312:role/accountname-aws-admin,arn:aws:iam::212743507312:saml-provider/WAAD",
		},
		new AppRole
		{
			AllowedMemberTypes = new List<string>
			{
				"User",
			},
			Description = "Finance,WAAD",
			DisplayName = "Finance,WAAD",
			Id = Guid.Parse("7a960000-ded3-455b-8c04-4f2ace00319b"),
			IsEnabled = true,
			Value = "arn:aws:iam::212743507312:role/accountname-aws-finance,arn:aws:iam::212743507312:saml-provider/WAAD",
		},
	},
};
var result = await graphClient.ServicePrincipals["{servicePrincipal-id}"].PatchAsync(requestBody);


```