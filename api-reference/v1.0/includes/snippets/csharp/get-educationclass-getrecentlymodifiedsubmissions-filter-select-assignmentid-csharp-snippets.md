---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Education.Classes["{educationClass-id}"].GetRecentlyModifiedSubmissions.GetAsGetRecentlyModifiedSubmissionsGetResponseAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "assignmentId eq 'b20d6737-f88e-4892-8174-73aa26d18784'";
	requestConfiguration.QueryParameters.Select = new string []{ "LastModifiedDateTime","status" };
});


```