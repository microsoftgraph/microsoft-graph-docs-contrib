---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new OrganizationalBrandingLocalization
{
	SignInPageText = "Welcome to Contoso France.",
	UsernameHintText = " ",
};
var result = await graphClient.Organization["{organization-id}"].Branding.Localizations["{organizationalBrandingLocalization-id}"].PatchAsync(requestBody);


```