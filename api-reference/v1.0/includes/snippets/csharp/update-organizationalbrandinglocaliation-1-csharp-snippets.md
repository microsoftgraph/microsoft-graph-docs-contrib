---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new OrganizationalBranding
{
	SignInPageText = "Default",
	UsernameHintText = "DefaultHint",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Organization["{organization-id}"].Branding.PatchAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("Accept-Language", "0");
});


```