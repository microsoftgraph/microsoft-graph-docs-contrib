---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.IdentityGovernance.PrivilegedAccess.Group.EligibilitySchedules.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "principalId eq '3cce9d87-3986-4f19-8335-7ed075408ca2'";
	requestConfiguration.QueryParameters.Select = new string []{ "accessId","principalId","groupId" };
});


```