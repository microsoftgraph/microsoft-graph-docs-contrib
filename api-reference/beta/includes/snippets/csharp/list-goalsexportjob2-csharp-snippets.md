---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.EmployeeExperience.Goals.ExportJobs.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = " goalsOrganizationId eq '3d9a8150-90fd-42bd-9777-25ba783d4a05'";
});


```