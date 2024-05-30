---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.EmployeeExperience.Goals.ExportJobs.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = " explorerViewId eq ‘9ab0fcab-c1d4-4b26-963b-a3c33155f853’";
});


```