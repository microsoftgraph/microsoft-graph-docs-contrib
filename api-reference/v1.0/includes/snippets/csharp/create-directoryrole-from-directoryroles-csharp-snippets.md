---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new DirectoryRole
{
	RoleTemplateId = "fe930be7-5e62-47db-91af-98c3a49a38b1",
};
var result = await graphClient.DirectoryRoles.PostAsync(requestBody);


```