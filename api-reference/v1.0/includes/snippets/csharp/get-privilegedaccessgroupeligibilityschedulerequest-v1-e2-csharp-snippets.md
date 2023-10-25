---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.IdentityGovernance.PrivilegedAccess.Group.EligibilityScheduleRequests["{privilegedAccessGroupEligibilityScheduleRequest-id}"].GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Select = new string []{ "principalId","action","groupId" };
});


```