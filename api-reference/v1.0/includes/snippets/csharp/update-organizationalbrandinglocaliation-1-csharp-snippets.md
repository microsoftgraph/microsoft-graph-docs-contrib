---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new OrganizationalBranding
{
	SignInPageText = "Default",
	UsernameHintText = "DefaultHint",
};
var result = await graphClient.Organization["{organization-id}"].Branding.PatchAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("Accept-Language", "0");
});


```