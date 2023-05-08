---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new OrganizationalBrandingLocalization
{
	BackgroundColor = "#00000F",
	SignInPageText = "Welcome to Contoso France",
};
var result = await graphClient.Organization["{organization-id}"].Branding.Localizations["{organizationalBrandingLocalization-id}"].PatchAsync(requestBody);


```