---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Reports.ServicePrincipalSignInActivities.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "appId eq 'f4d9654f-0305-4072-878c-8bf266dfe146'";
});


```