---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Education.Classes["{educationClass-id}"].GetRecentlyModifiedSubmissions.GetAsGetRecentlyModifiedSubmissionsGetResponseAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Orderby = new string []{ "lastModifiedDateTime" };
	requestConfiguration.QueryParameters.Top = 1;
});


```