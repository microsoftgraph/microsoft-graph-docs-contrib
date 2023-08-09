---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new GroupLifecyclePolicy
{
	GroupLifetimeInDays = 180,
	ManagedGroupTypes = "Selected",
	AlternateNotificationEmails = "admin@contoso.com",
};
var result = await graphClient.GroupLifecyclePolicies["{groupLifecyclePolicy-id}"].PatchAsync(requestBody);


```