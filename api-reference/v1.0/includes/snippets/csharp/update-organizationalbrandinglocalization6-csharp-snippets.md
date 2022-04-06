---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var organizationalBrandingLocalization = new OrganizationalBrandingLocalization
{
	BackgroundColor = "#00000F",
	SignInPageText = "Welcome to Contoso France"
};

await graphClient.Organization["{organization-id}"].Branding.Localizations["{organizationalBrandingLocalization-id}"]
	.Request()
	.UpdateAsync(organizationalBrandingLocalization);

```