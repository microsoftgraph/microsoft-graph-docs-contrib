---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Users.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "assignedLicenses/any(s:s/skuId eq 184efa21-98c3-4e5d-95ab-d07053a96e67)";
});


```