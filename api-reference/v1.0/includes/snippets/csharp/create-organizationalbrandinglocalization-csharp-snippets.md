---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new OrganizationalBrandingLocalization
{
	BackgroundColor = "#00000F",
	Id = "fr-FR",
	SignInPageText = " ",
};
var result = await graphClient.Organization["{organization-id}"].Branding.Localizations.PostAsync(requestBody);


```