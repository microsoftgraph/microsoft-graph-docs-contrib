---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AdministrativeUnit
{
	DisplayName = "Executive Division",
	Description = "Executive division administration",
	IsMemberManagementRestricted = true,
};
var result = await graphClient.AdministrativeUnits.PostAsync(requestBody);


```