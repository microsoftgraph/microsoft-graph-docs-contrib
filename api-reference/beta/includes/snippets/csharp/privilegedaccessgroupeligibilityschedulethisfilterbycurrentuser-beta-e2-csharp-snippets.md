---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.IdentityGovernance.PrivilegedAccess.Group.EligibilitySchedules.FilterByCurrentUserWithOn("principal").GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "groupId eq 'd5f0ad2e-6b34-401b-b6da-0c8fc2c5a3fc' and accessId eq 'member'";
});


```