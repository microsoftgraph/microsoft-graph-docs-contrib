---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Groups.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Select = new string []{ "id","assignedLicenses" };
	requestConfiguration.QueryParameters.Filter = "assignedLicenses/any()";
	requestConfiguration.QueryParameters.Expand = new string []{ "members($select=id,displayName)" };
});


```