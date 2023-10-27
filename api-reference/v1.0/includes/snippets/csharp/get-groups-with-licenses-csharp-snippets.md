---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Groups.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Select = new string []{ "id","assignedLicenses" };
	requestConfiguration.QueryParameters.Filter = "assignedLicenses/any()";
	requestConfiguration.QueryParameters.Expand = new string []{ "members($select=id,displayName)" };
});


```