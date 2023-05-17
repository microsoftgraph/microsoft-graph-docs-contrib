---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Users["{user-id}"].AppRoleAssignments.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "resourceId eq 8e881353-1735-45af-af21-ee1344582a4d";
});


```