---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AdministrativeUnit
{
	DisplayName = "Greater Seattle District Technical Schools",
};
var result = await graphClient.Directory.AdministrativeUnits["{administrativeUnit-id}"].PatchAsync(requestBody);


```